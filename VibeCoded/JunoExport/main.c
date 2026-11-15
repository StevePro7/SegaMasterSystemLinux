/* ---------------------------------------------------------------------------
 * JUNO FIRST for the Sega Master System  (devkitSMS / SDCC)
 *
 * A clone of Konami's 1983 arcade game: fly forwards/backwards over a
 * perspective grid, shoot the enemy formations, rescue the astronaut to turn
 * the field red for bonus scoring, and warp out of trouble.
 *
 * World model: depth is cyclic, 256 units long, stored 8.8 fixed in a u16 so
 * it wraps for free.  rel = (obj_z - cam_z) >> 8 is the distance ahead of the
 * bottom of the screen; 0..223 is visible, 224..255 is "behind" the camera.
 * The grid is animated by palette cycling (12 pre-drawn phases, one lit).
 * ------------------------------------------------------------------------- */
#include <string.h>
#include "SMSlib.h"
#include "PSGlib.h"
#include "gfx.h"
#include "snd.h"

typedef unsigned char u8;
typedef signed char s8;
typedef unsigned int u16;
typedef int s16;

__sfr __at 0x7F PSGPort;

#define ST_TITLE 0
#define ST_PLAY  1
#define ST_OVER  2

#define PH_INTRO  0
#define PH_ACTION 1
#define PH_OVER   2

#define PL_ALIVE 0
#define PL_DYING 1
#define PL_WARP  2
#define PL_DEAD  3

#define MAX_EN 9
#define MAX_GRP 3
#define GSIZE 3
#define MAX_PB 4
#define MAX_EB 4

#define PLAYER_REL 25
#define PLAYER_Y   150
#define REL_HIDDEN 224

#define COL_LINE  RGB(1,2,3)
#define COL_BONUS RGB(3,0,0)

#define HUD_SCORE 1
#define HUD_HI    2
#define HUD_WAVE  4
#define HUD_SHIPS 8
#define HUD_BONUS 16

/* ---- game state (file-scope so the test harness can see it) ---- */
u8 game_state, phase, phase_timer;
u8 lives, wave, warps;
u8 score[6], hiscore[6];
u8 tenk_count, next_extra;
u16 cam_z;
u8 px;
s16 pvz;
u8 pstate, ptimer, invuln, fire_cd;
u8 en_count, wave_left, spawn_cd, grp_max, fire_thr, dive_thr, eb_max, eb_k;
s16 wave_vz, dive_vz;
u16 eb_spd;
u8 diver;                      /* index+1 of the one enemy allowed off-formation */
u16 bonus_timer;
u8 bonus_val, astro_cd;
u8 frame;
u16 loops;
u8 hud_dirty, msg_state;       /* msg_state: 1 = draw pending, 2 = clear pending */
const char *msg_text;
u8 cur_phase, line_col, line_dirty;
u8 sfx_prio, music_on;
u16 keys, oldkeys, pressed;
u16 rng = 0xACE1;
u16 stat_degraded;             /* times a near object was drawn with its 1-sprite image */
u8 stat_rammed, stat_shot;     /* how the player died (for tuning/tests) */
u8 demo;                       /* 1 = attract-mode demo, 2 = autopilot (testing) */
u16 demo_timer;

/* formations: each group flies as a unit, members hold slots */
u8 g_n[MAX_GRP], g_type[MAX_GRP], g_form[MAX_GRP], g_t[MAX_GRP], g_dir[MAX_GRP], g_base[MAX_GRP];
u16 g_x[MAX_GRP], g_z[MAX_GRP];
u8 g_xh[MAX_GRP], g_rel[MAX_GRP];      /* per-frame cache: pixel x / screen depth */
/* en_mode: 0 in formation, 1 diving at the player, 2 flying back to its slot */
u8 en_st[MAX_EN], en_type[MAX_EN], en_t[MAX_EN], en_grp[MAX_EN], en_slot[MAX_EN], en_mode[MAX_EN];
u16 en_x[MAX_EN], en_z[MAX_EN];
u8 en_rel[MAX_EN], en_xh[MAX_EN];      /* cached screen depth / pixel x */
u8 en_tile[MAX_EN];
u8 en_dx[MAX_EN], en_dz[MAX_EN];       /* formation slot offset (two's complement) */

/* sprites-per-scanline bookkeeping (the VDP shows only 8 per line) */
u8 occ[32];                            /* depth bands (8 units) holding a live enemy */
u8 row_n[32];                          /* sprites per 8-line band */

u8 pb_st[MAX_PB], pb_x[MAX_PB];
u16 pb_z[MAX_PB];

u8 eb_st[MAX_EB];
u16 eb_x[MAX_EB], eb_z[MAX_EB];
s16 eb_vx[MAX_EB];

u8 as_st, as_x;
u16 as_z;

const u8 spr_pal[16] = {
  RGB(0,0,0), RGB(3,3,0), RGB(2,2,2), RGB(1,1,1), RGB(3,0,0), RGB(3,2,0), RGB(3,3,3), RGB(0,3,0),
  RGB(0,3,3), RGB(0,1,3), RGB(3,0,3), RGB(2,0,0), RGB(0,0,2), RGB(3,2,2), RGB(0,2,0), RGB(0,0,0)
};
const u8 pts_h[4] = {1, 1, 2, 3};
const u8 pts_t[4] = {0, 5, 0, 0};
/* formation shapes: line, V, column, diagonal (dx pixels, dz depth units) */
const s8 form_dx[4][GSIZE] = {{-32, 0, 32}, {-32, 0, 32}, {0, 0, 0}, {-32, 0, 32}};
const u8 form_dz[4][GSIZE] = {{0, 0, 0}, {8, 0, 8}, {0, 12, 24}, {0, 8, 16}};

/* ------------------------------------------------------------------ utils */
u8 rand8(void) {
  rng ^= rng << 7; rng ^= rng >> 9; rng ^= rng << 8;
  return (u8)rng;
}

void frame_interrupt(void) {
  PSGFrame();
  PSGSFXFrame();
}

void sfx(const u8 *d, u8 ch, u8 prio) {
  if (demo == 1) return;
  if (prio >= sfx_prio || !PSGSFXGetStatus()) {
    PSGSFXPlay((void *)d, ch);
    sfx_prio = prio;
  }
}

void print_at(u8 x, u8 y, const char *s) {
  SMS_setNextTileatXY(x, y);
  while (*s) { SMS_setTile((u16)(*s - 32)); s++; }
}

void print_yel(u8 x, u8 y, const char *s) {
  SMS_setNextTileatXY(x, y);
  while (*s) { SMS_setTile((u16)(*s - 32) | TILE_USE_SPRITE_PALETTE); s++; }
}

void draw_field_row(u8 r) {
  u8 i;
  u16 t = (r < 3) ? 0 : (u16)(FIELD_BASE + r);
  SMS_setNextTileatXY(0, r);
  for (i = 32; i; i--) SMS_setTile(t);
}

void put_digits(u8 x, u8 y, const u8 *d) {
  u8 i;
  SMS_setNextTileatXY(x, y);
  for (i = 0; i < 6; i++) SMS_setTile((u16)(d[i] + 16));
}

void hud_flush(void) {
  if (hud_dirty & HUD_SCORE) put_digits(7, 0, score);
  if (hud_dirty & HUD_HI) put_digits(18, 0, hiscore);
  if (hud_dirty & HUD_WAVE) {
    SMS_setNextTileatXY(30, 0);
    SMS_setTile((u16)(wave / 10 + 16)); SMS_setTile((u16)(wave % 10 + 16));
  }
  if (hud_dirty & HUD_SHIPS) {
    SMS_setTileatXY(7, 1, (u16)(lives + 16));
    SMS_setTileatXY(15, 1, (u16)(warps + 16));
  }
  if (hud_dirty & HUD_BONUS) {
    if (bonus_timer) {
      print_yel(21, 1, "BONUS ");
      SMS_setTile((u16)((bonus_val >= 20 ? 2 : bonus_val >= 10 ? 1 : 0) + 16) | TILE_USE_SPRITE_PALETTE);
      SMS_setTile((u16)(bonus_val % 10 + 16) | TILE_USE_SPRITE_PALETTE);
      SMS_setTile(16 | TILE_USE_SPRITE_PALETTE); SMS_setTile(16 | TILE_USE_SPRITE_PALETTE);
    } else {
      print_at(21, 1, "          ");
    }
  }
  hud_dirty = 0;
}

void show_msg(const char *s) { msg_text = s; msg_state = 1; }
void clear_msg(void) { msg_state = 2; }

void msg_flush(void) {
  u8 n;
  const char *s;
  if (msg_state == 1) {
    draw_field_row(11);
    for (n = 0, s = msg_text; *s; s++) n++;
    print_at((32 - n) >> 1, 11, msg_text);
    if (phase == PH_INTRO) {     /* "WAVE nn": patch the number in */
      SMS_setNextTileatXY(((32 - n) >> 1) + 5, 11);
      SMS_setTile((u16)(wave / 10 + 16)); SMS_setTile((u16)(wave % 10 + 16));
    }
  } else if (msg_state == 2) {
    draw_field_row(11);
  }
  msg_state = 0;
}

void field_update(void) {
  u8 p = (u8)(((cam_z & 0x0FFF) * 3) >> 10);
  if (p != cur_phase || line_dirty) {
    SMS_setBGPaletteColor(2 + cur_phase, 0);
    SMS_setBGPaletteColor(2 + p, line_col);
    cur_phase = p;
    line_dirty = 0;
  }
}

void inc_digit(u8 i) {
  for (;;) {
    if (++score[i] < 10) break;
    score[i] = 0;
    if (i == 2) {                 /* carry into the ten-thousands digit */
      if (++tenk_count == next_extra) {
        next_extra += 5;
        if (lives < 9) { lives++; hud_dirty |= HUD_SHIPS; }
        sfx(sfx_extra, SFX_CHANNEL2, 4);
      }
    }
    if (!i) break;
    i--;
  }
}

void add_score(u8 hundreds, u8 tens) {
  while (tens--) inc_digit(4);
  while (hundreds--) inc_digit(3);
  hud_dirty |= HUD_SCORE;
}

/* ---------------------------------------------------------------- sprites */
/* A 16-line sprite touches at most three 8-line bands; taking the fullest
 * band is a safe (slightly pessimistic) per-scanline sprite count. */
u8 row_load(u8 y) {
  u8 *p = row_n + (y >> 3);
  u8 n = p[0];
  if (p[1] > n) n = p[1];
  if (p[2] > n) n = p[2];
  return n;
}

void row_add(u8 y, u8 n) {
  u8 *p = row_n + (y >> 3);
  p[0] += n; p[1] += n; p[2] += n;
}

/* Draws a scaled object.  Never lets a scanline exceed 8 sprites: an object
 * that would overflow is drawn with its 1-sprite far image instead. */
void draw3(u8 x, u8 rel, u8 tile) {
  static u8 y, n;
  static u8 *p;
  y = ylut[rel] - 8;
  p = row_n + (y >> 3);
  n = p[0];
  if (p[1] > n) n = p[1];
  if (p[2] > n) n = p[2];
  if (rel < 136 && n <= 6) {
    if (rel >= 64) tile += 4;
    SMS_addSprite(x - 8, y, tile); SMS_addSprite(x, y, tile + 2);
    n = 2;
  } else if (n <= 7) {
    if (rel < 136) stat_degraded++;
    SMS_addSprite(x - 4, y, tile + 8);
    n = 1;
  } else return;
  p[0] += n; p[1] += n; p[2] += n;
}

void draw16(u8 x, u8 y, u8 tile) {
  SMS_addSprite(x - 8, y, tile); SMS_addSprite(x, y, tile + 2);
}

/* ----------------------------------------------------------------- player */
void kill_player(void) {
  if (pstate != PL_ALIVE || invuln) return;
  pstate = PL_DYING; ptimer = 90;
  sfx(sfx_die, SFX_CHANNELS2AND3, 5);
}

void update_player(void) {
  u8 i;
  if (pstate == PL_ALIVE) {
    if (keys & PORT_A_KEY_LEFT)  { if (px > 14) px -= 2; }
    if (keys & PORT_A_KEY_RIGHT) { if (px < 242) px += 2; }
    if (keys & PORT_A_KEY_UP) {
      pvz += 0x18; if (pvz > 0x200) pvz = 0x200;
    } else if (keys & PORT_A_KEY_DOWN) {
      pvz -= 0x18; if (pvz < -0x100) pvz = -0x100;
    } else if (pvz > 0) {
      pvz -= 0x0C; if (pvz < 0) pvz = 0;
    } else if (pvz < 0) {
      pvz += 0x0C; if (pvz > 0) pvz = 0;
    }
    if (fire_cd) fire_cd--;
    if ((keys & PORT_A_KEY_1) && !fire_cd) {
      for (i = 0; i < MAX_PB; i++) {
        if (!pb_st[i]) {
          pb_st[i] = 1; pb_x[i] = px; pb_z[i] = cam_z + ((PLAYER_REL + 5) << 8);
          fire_cd = 7;
          sfx(sfx_shot, SFX_CHANNEL2, 1);
          break;
        }
      }
    }
    if ((pressed & PORT_A_KEY_2) && warps) {
      warps--; hud_dirty |= HUD_SHIPS;
      pstate = PL_WARP; ptimer = 30;
      sfx(sfx_warp, SFX_CHANNEL2, 3);
    }
    if (invuln) invuln--;
  } else {
    if (pvz > 0) { pvz -= 0x0C; if (pvz < 0) pvz = 0; }
    else if (pvz < 0) { pvz += 0x0C; if (pvz > 0) pvz = 0; }
    if (pstate == PL_DYING) {
      if (--ptimer == 0) {
        lives--; hud_dirty |= HUD_SHIPS;
        if (!lives) {
          pstate = PL_DEAD; phase = PH_OVER; phase_timer = 250;
          game_state = ST_OVER;
          show_msg("GAME OVER");
          if (demo != 1) PSGPlayNoRepeat((void *)mus_over);
          music_on = 0;
        } else {
          pstate = PL_ALIVE; invuln = 120; px = 128; warps = 3;
          for (i = 0; i < MAX_EB; i++) eb_st[i] = 0;
        }
      }
    } else if (pstate == PL_WARP) {
      if (--ptimer == 0) {
        px = 24 + (rand8() & 127) + (rand8() & 63);
        cam_z += (u16)(64 + (rand8() & 63)) << 8;
        pvz = 0;
        pstate = PL_ALIVE; invuln = 45;
      }
    }
  }
  cam_z += pvz;
}

/* ---------------------------------------------------------------- enemies */
void kill_enemy(u8 i, u8 scored) {
  en_st[i] = 2; en_t[i] = 0;
  en_z[i] = cam_z + ((u16)en_rel[i] << 8);
  g_n[en_grp[i]]--;
  if (diver == i + 1) diver = 0;
  sfx(sfx_boom, SFX_CHANNEL3, 2);
  if (!scored) return;
  if (bonus_timer) {
    add_score(bonus_val, 0);
    if (bonus_val < 20) bonus_val += 2;
    hud_dirty |= HUD_BONUS;
  } else {
    add_score(pts_h[en_type[i]], pts_t[en_type[i]]);
    if (astro_cd) astro_cd--;
    if (!astro_cd && !as_st) {
      as_st = 1; as_x = en_xh[i]; as_z = en_z[i];
      astro_cd = 8;
    }
  }
}

void fire_at_player(u8 i, u8 rel) {
  u8 j, t;
  s16 dx;
  for (j = 0; j < eb_max; j++) {
    if (!eb_st[j]) {
      t = (u8)(((u16)(u8)(rel - PLAYER_REL) * eb_k) >> 4);
      dx = (s16)px - (s16)en_xh[i];
      dx = ((dx << 6) / (s16)t) << 2;
      if (dx > 0x180) dx = 0x180; else if (dx < -0x180) dx = -0x180;
      eb_st[j] = 1; eb_x[j] = (u16)en_xh[i] << 8; eb_z[j] = cam_z + ((u16)rel << 8); eb_vx[j] = dx;
      sfx(sfx_eshot, SFX_CHANNEL2, 0);
      return;
    }
  }
}

/* each formation follows its own flight path */
void update_groups(void) {
  static u8 g, t, xh;
  for (g = 0; g < MAX_GRP; g++) {
    if (!g_n[g]) continue;
    t = ++g_t[g];
    xh = (u8)(g_x[g] >> 8);
    switch (g_type[g]) {
      case 0:                          /* saucers: gentle sway */
        g_x[g] = (u16)(u8)(g_base[g] + sin4[(u8)(t << 1)]) << 8;
        break;
      case 1:                          /* darts: track the player */
        if (xh + 2 < px) { if (xh < 212) g_x[g] += 0xC0; }
        else if (xh > px + 2) { if (xh > 44) g_x[g] -= 0xC0; }
        break;
      case 2:                          /* spinners: sweep edge to edge */
        if (g_dir[g]) { g_x[g] += 0x140; if (xh >= 212) g_dir[g] = 0; }
        else { g_x[g] -= 0x140; if (xh <= 44) g_dir[g] = 1; }
        if (!(t & 63) && (rand8() & 1)) g_dir[g] ^= 1;
        break;
      default:                         /* bombers: wide slow weave */
        g_x[g] = (u16)(u8)(g_base[g] + (sintab[t] >> 1)) << 8;
        break;
    }
    g_z[g] += wave_vz;
    g_xh[g] = (u8)(g_x[g] >> 8);
    g_rel[g] = (u8)((g_z[g] - cam_z) >> 8);
  }
}

void update_enemies(void) {
  static u8 i, g, xh, rel, d, mode;
  memset(occ, 0, sizeof(occ));
  for (i = 0; i < MAX_EN; i++) {
    d = en_st[i];
    if (!d) continue;
    if (d == 2) {
      if (++en_t[i] >= 18) { en_st[i] = 0; en_count--; }
      en_rel[i] = (u8)((en_z[i] - cam_z) >> 8);
      continue;
    }
    g = en_grp[i];
    mode = en_mode[i];
    if (!mode) {                       /* in formation: slot = group centre + offset */
      if (g_type[g] == 2) {            /* spinners orbit the formation centre */
        d = (u8)(g_t[g] << 1) + en_slot[i];
        en_dz[i] = sin16[d];
        d += 64;
        en_dx[i] = sin4[d];
      }
      xh = g_xh[g] + en_dx[i];
      rel = g_rel[g] + en_dz[i];
    } else {
      xh = (u8)(en_x[i] >> 8);
      en_z[i] += dive_vz;
      if (mode == 1) {                 /* dive: home on the player, pass, loop round */
        if (xh < px) { if ((u8)(px - xh) > 1) xh++; } else if ((u8)(xh - px) > 1) xh--;
      } else {                         /* return: descend from the far end to the slot */
        d = g_xh[g] + en_dx[i];
        if (xh < d) xh++; else if (xh > d) xh--;
        if ((u8)((en_z[i] - g_z[g] - ((u16)en_dz[i] << 8)) >> 8) < 3) { en_mode[i] = 0; diver = 0; }
      }
      en_x[i] = (u16)xh << 8;
      rel = (u8)((en_z[i] - cam_z) >> 8);
    }
    en_rel[i] = rel; en_xh[i] = xh;
    if (rel >= REL_HIDDEN) {
      if (mode == 1) en_mode[i] = 2;
      continue;
    }
    occ[rel >> 3] = 1;
    if (rel >= PLAYER_REL - 5 && rel <= PLAYER_REL + 5) {
      d = xh > px ? xh - px : px - xh;
      if (d < 10 && pstate == PL_ALIVE && !invuln) { stat_rammed++; kill_player(); kill_enemy(i, 0); }
    }
  }
  /* one randomly chosen enemy per frame may fire or peel off into a dive */
  if (phase != PH_ACTION || pstate != PL_ALIVE) return;
  i = rand8() & 15;
  if (i >= MAX_EN || en_st[i] != 1) return;
  rel = en_rel[i];
  if (rel < 90 || rel >= 212) return;
  d = rand8();
  if (d < fire_thr || (en_type[i] == 3 && d < (u8)(fire_thr + fire_thr))) fire_at_player(i, rel);
  if (!diver && !en_mode[i] && rel >= 110 && rel < 200) {
    d ^= 0xA5;
    if (d < dive_thr || (en_type[i] == 1 && d < (u8)(dive_thr + dive_thr))) {
      en_mode[i] = 1; diver = i + 1;
      en_x[i] = (u16)en_xh[i] << 8; en_z[i] = cam_z + ((u16)rel << 8);
    }
  }
}

/* A new formation enters from the far end, but only once every other
 * formation is at least 64 depth units away: all formations share one
 * approach speed, so they then never share screen rows. */
void spawn_group(void) {
  u8 i, n, g, type, k, d;
  u16 zs = cam_z + ((u16)230 << 8);
  for (g = 0; g < grp_max; g++) if (!g_n[g]) break;
  if (g == grp_max) return;
  for (i = 0; i < MAX_GRP; i++) {
    if (!g_n[i]) continue;
    d = (u8)((g_z[i] - zs) >> 8);
    if (d < 64 || d > 192) return;
  }
  n = GSIZE;
  if (n > wave_left) n = wave_left;
  k = wave > 4 ? 4 : wave;
  type = rand8() & 3;
  while (type >= k) type -= k;
  g_type[g] = type; g_form[g] = rand8() & 3; g_t[g] = rand8(); g_dir[g] = rand8() & 1;
  if (type == 3) d = 104 + (rand8() % 49);
  else if (type == 0) d = 72 + (rand8() % 113);
  else d = 44 + (rand8() % 169);
  g_base[g] = d; g_x[g] = (u16)d << 8; g_z[g] = zs;
  k = 0;
  for (i = 0; i < MAX_EN && k < n; i++) {
    if (en_st[i]) continue;
    en_st[i] = 1; en_type[i] = type; en_grp[i] = g; en_slot[i] = k * 85; en_mode[i] = 0;
    en_dx[i] = (u8)form_dx[g_form[g]][k]; en_dz[i] = form_dz[g_form[g]][k];
    en_tile[i] = SPR_ENEMY + type * 20;
    en_rel[i] = 255;
    en_count++; wave_left--; k++;
  }
  g_n[g] = k;
  spawn_cd = 40;
}

void update_pbullets(void) {
  static u8 i, j, k, rel, d, x;
  static const u8 *pr;
  for (i = 0; i < MAX_PB; i++) {
    if (!pb_st[i]) continue;
    pb_z[i] += 0x500;
    rel = (u8)((pb_z[i] - cam_z) >> 8);
    if (rel >= 216 || rel < PLAYER_REL) { pb_st[i] = 0; continue; }
    if (!(occ[(u8)(rel - 4) >> 3] | occ[(u8)(rel + 4) >> 3])) continue;
    x = pb_x[i];
    pr = en_rel;
    for (j = MAX_EN; j; j--, pr++) {
      d = *pr - rel; d += 4;
      if (d > 8) continue;
      k = (u8)(pr - en_rel);
      if (en_st[k] != 1) continue;
      d = en_xh[k];
      d = d > x ? d - x : x - d;
      if (d < (rel < 64 ? 10 : rel < 136 ? 8 : 6)) {
        kill_enemy(k, 1);
        pb_st[i] = 0;
        break;
      }
    }
  }
}

void update_ebullets(void) {
  static u8 i, rel, xh, d;
  for (i = 0; i < MAX_EB; i++) {
    if (!eb_st[i]) continue;
    eb_x[i] += eb_vx[i];
    eb_z[i] -= eb_spd;
    xh = (u8)(eb_x[i] >> 8);
    rel = (u8)((eb_z[i] - cam_z) >> 8);
    if (rel >= REL_HIDDEN || rel < 4 || xh < 6 || xh > 250) { eb_st[i] = 0; continue; }
    if (rel >= PLAYER_REL - 4 && rel <= PLAYER_REL + 4) {
      d = xh > px ? xh - px : px - xh;
      if (d < 6 && pstate == PL_ALIVE && !invuln) { stat_shot++; kill_player(); eb_st[i] = 0; }
    }
  }
}

void update_astro(void) {
  u8 rel, d;
  if (bonus_timer) {
    if (--bonus_timer == 0) { line_col = COL_LINE; line_dirty = 1; hud_dirty |= HUD_BONUS; }
  }
  if (!as_st) return;
  as_z -= 0x40;
  rel = (u8)((as_z - cam_z) >> 8);
  if (rel >= REL_HIDDEN) { as_st = 0; return; }
  if (rel >= PLAYER_REL - 10 && rel <= PLAYER_REL + 10 && pstate == PL_ALIVE) {
    d = as_x > px ? as_x - px : px - as_x;
    if (d < 14) {
      as_st = 0;
      bonus_timer = 600; bonus_val = 2;
      line_col = COL_BONUS; line_dirty = 1; hud_dirty |= HUD_BONUS;
      add_score(5, 0);
      sfx(sfx_pickup, SFX_CHANNEL2, 3);
    }
  }
}

void start_wave(void) {
  u8 n, w = wave > 12 ? 12 : wave;
  phase = PH_INTRO; phase_timer = 120;
  n = 9 + wave * 3; if (n > 36) n = 36;
  wave_left = n;
  grp_max = wave < 3 ? 2 : 3;
  fire_thr = (w > 6 ? 6 : w) << 4;
  dive_thr = wave < 2 ? 0 : ((w > 8 ? 4 : (w >> 1)) << 4);
  n = 1 + (w >> 1); if (n > MAX_EB) n = MAX_EB;
  eb_max = n;
  eb_spd = 0x160 + ((u16)w << 4); if (eb_spd > 0x260) eb_spd = 0x260;
  eb_k = (u8)(4096 / eb_spd);
  wave_vz = -(s16)(0x58 + (w << 3));
  dive_vz = wave_vz - 0x120;
  spawn_cd = 0;
  hud_dirty |= HUD_WAVE;
  show_msg("WAVE 00");
}

void update_phase(void) {
  if (phase == PH_INTRO) {
    if (--phase_timer == 0) {
      phase = PH_ACTION;
      clear_msg();
      if (!music_on && demo != 1) { PSGPlay((void *)mus_game); music_on = 1; }
    }
  } else if (phase == PH_ACTION) {
    if (spawn_cd) spawn_cd--;
    else if (wave_left && en_count + GSIZE <= MAX_EN) spawn_group();
    if (!wave_left && !en_count && pstate == PL_ALIVE) {
      if (wave < 99) wave++;
      start_wave();
    }
  } else {
    if (phase_timer) phase_timer--;
    if (!phase_timer || (phase_timer < 190 && (pressed & (PORT_A_KEY_1 | PORT_A_KEY_2)))) game_state = ST_TITLE;
  }
}

void build_sprites(void) {
  static u8 i, rel, y, f;
  SMS_initSprites();
  memset(row_n, 0, sizeof(row_n));
  if (pstate == PL_ALIVE) {
    if (!(invuln & 2)) { draw16(px, PLAYER_Y, SPR_PLAYER + ((pvz > 0 && (frame & 2)) ? 4 : 0)); row_add(PLAYER_Y, 2); }
  } else if (pstate == PL_DYING && ptimer > 54) {
    f = (90 - ptimer) / 12;
    draw16(px, PLAYER_Y, SPR_EXPL + f * 10); row_add(PLAYER_Y, 2);
  }
  for (i = 0; i < MAX_EB; i++) {       /* enemy shots first: they must never drop out */
    if (!eb_st[i]) continue;
    rel = (u8)((eb_z[i] - cam_z) >> 8);
    if (rel >= REL_HIDDEN) continue;
    y = ylut[rel] - 5;
    SMS_addSprite((u8)(eb_x[i] >> 8) - 4, y, rel < 110 ? SPR_EBUL + ((frame & 4) ? 2 : 0) : SPR_EBUL_S);
    row_add(y, 1);
  }
  f = (frame & 8) ? 10 : 0;
  for (i = 0; i < MAX_EN; i++) {
    if (!en_st[i]) continue;
    rel = en_rel[i];
    if (rel >= REL_HIDDEN) continue;
    if (en_st[i] == 1) draw3(en_xh[i], rel, en_tile[i] + f);
    else { y = en_t[i]; draw3(en_xh[i], rel, y < 6 ? SPR_EXPL : y < 12 ? SPR_EXPL + 10 : SPR_EXPL + 20); }
  }
  if (as_st) {
    rel = (u8)((as_z - cam_z) >> 8);
    if (rel < REL_HIDDEN) draw3(as_x, rel, SPR_ASTRO + ((frame & 16) ? 10 : 0));
  }
  for (i = 0; i < MAX_PB; i++) {
    if (!pb_st[i]) continue;
    rel = (u8)((pb_z[i] - cam_z) >> 8);
    y = ylut[rel] - 3;
    SMS_addSprite(pb_x[i] - 4, y, rel < 110 ? SPR_PBUL : SPR_PBUL_S);
  }
  SMS_finalizeSprites();
}

/* Autopilot for the attract mode: dodge shots, line up on the nearest
 * formation member (or the astronaut), keep a comfortable distance, fire. */
u16 ai_keys(void) {
  static u8 i, rel, xh, d, best, bx, hold;
  hold = 0;
  for (i = 0; i < MAX_EB; i++) {
    if (!eb_st[i]) continue;
    rel = (u8)((eb_z[i] - cam_z) >> 8);
    if (rel > 100 || rel < PLAYER_REL - 4) continue;
    xh = (u8)(eb_x[i] >> 8);
    d = xh > px ? xh - px : px - xh;
    if (d < 13) {
      if (px < 40) return PORT_A_KEY_1 | PORT_A_KEY_RIGHT;
      if (px > 216) return PORT_A_KEY_1 | PORT_A_KEY_LEFT;
      return PORT_A_KEY_1 | (xh >= px ? PORT_A_KEY_LEFT : PORT_A_KEY_RIGHT);
    }
    if (d < 26) hold = 1;            /* a shot is passing close by: stay put */
  }
  best = 255; bx = px;
  for (i = 0; i < MAX_EN; i++) {
    if (en_st[i] != 1) continue;
    rel = en_rel[i];
    if (rel >= 216 || rel < PLAYER_REL - 6) continue;
    xh = en_xh[i];
    if (rel < 50) {                    /* too close to shoot safely: sidestep */
      d = xh > px ? xh - px : px - xh;
      if (d < 20) return PORT_A_KEY_1 | PORT_A_KEY_DOWN | ((xh >= px && px > 40) || px > 216 ? PORT_A_KEY_LEFT : PORT_A_KEY_RIGHT);
      continue;
    }
    if (rel < best) { best = rel; bx = xh; }
  }
  if (as_st) {
    rel = (u8)((as_z - cam_z) >> 8);
    if (rel < best && rel >= PLAYER_REL - 8) { best = rel; bx = as_x; }
  }
  if (best == 255) return PORT_A_KEY_1 | PORT_A_KEY_UP;
  i = PORT_A_KEY_1;
  if (!hold) { if (bx > px + 2) i |= PORT_A_KEY_RIGHT; else if (bx + 2 < px) i |= PORT_A_KEY_LEFT; }
  if (best > 140) i |= PORT_A_KEY_UP; else if (best < 80) i |= PORT_A_KEY_DOWN;
  return i;
}

void read_keys(void) {
  keys = SMS_getKeysStatus();
  if (demo) {
    if (demo == 1) {
      if ((keys & (PORT_A_KEY_1 | PORT_A_KEY_2)) || !--demo_timer) game_state = ST_TITLE;
      oldkeys = keys;
    }
    keys = ai_keys();
    pressed = 0;
    return;
  }
  pressed = keys & ~oldkeys;
  oldkeys = keys;
}

void draw_hud_frame(void) {
  print_at(0, 0, " SCORE 000000  HI 000000 WAVE 01");
  print_at(0, 1, " SHIPS 3  WARP 3                ");
}

/* ------------------------------------------------------------------ title */
void title(void) {
  u8 r, i, blink = 0;
  u16 idle = 0;
  game_state = ST_TITLE; demo = 0;
  SMS_waitForVBlank();
  SMS_displayOff();
  SMS_initSprites(); SMS_finalizeSprites(); SMS_copySpritestoSAT();
  for (r = 0; r < 24; r++) draw_field_row(r);
  print_at(0, 0, " SCORE 000000  HI 000000        ");
  for (r = 0; r < LOGO_H; r++) {
    SMS_setNextTileatXY(0, 4 + r); SMS_setTile(0);
    for (i = 0; i < LOGO_W; i++) SMS_setTile((u16)(LOGO_BASE + logo_map[r * LOGO_W + i]));
    SMS_setTile(0);
  }
  print_yel(5, 9, "FOR SEGA MASTER SYSTEM");
  print_at(5, 14, "100   150   200   300");
  print_yel(12, 17, "RESCUE = BONUS!");
  print_at(8, 21, "1: FIRE   2: WARP");
  print_at(1, 23, "A TRIBUTE TO KONAMI'S 1983 GAME");
  hud_dirty = HUD_SCORE | HUD_HI; hud_flush();
  line_col = COL_LINE; line_dirty = 1;
  SMS_displayOn();
  for (;;) {
    read_keys();
    if (SMS_queryPauseRequested()) SMS_resetPauseRequest();
    frame++; rng += frame;
    cam_z += 0xA0;
    SMS_initSprites();
    for (i = 0; i < 4; i++) draw16(52 + i * 48, 92, SPR_ENEMY + i * 20 + ((frame & 16) ? 10 : 0));
    draw16(80, 132, SPR_ASTRO + ((frame & 32) ? 10 : 0));
    SMS_finalizeSprites();
    SMS_waitForVBlank();
    SMS_copySpritestoSAT();
    field_update();
    if (!(frame & 31)) {
      blink ^= 1;
      if (blink) print_at(9, 19, "PUSH BUTTON 1"); else draw_field_row(19);
    }
    if (pressed & PORT_A_KEY_1) break;
    if (++idle == 600) { demo = 1; demo_timer = 2400; break; }
  }
}

/* ------------------------------------------------------------------- play */
void play(void) {
  u8 i;
  SMS_waitForVBlank();
  SMS_displayOff();
  SMS_initSprites(); SMS_finalizeSprites(); SMS_copySpritestoSAT();
  for (i = 0; i < 24; i++) draw_field_row(i);
  draw_hud_frame();
  for (i = 0; i < 6; i++) score[i] = 0;
  for (i = 0; i < MAX_EN; i++) en_st[i] = 0;
  for (i = 0; i < MAX_PB; i++) pb_st[i] = 0;
  for (i = 0; i < MAX_EB; i++) eb_st[i] = 0;
  for (i = 0; i < MAX_GRP; i++) g_n[i] = 0;
  as_st = 0; en_count = 0; diver = 0;
  lives = 3; wave = 1; warps = 3;
  tenk_count = 0; next_extra = 1;
  px = 128; pvz = 0; pstate = PL_ALIVE; invuln = 60; fire_cd = 0;
  bonus_timer = 0; astro_cd = 5;
  line_col = COL_LINE; line_dirty = 1;
  msg_state = 0; sfx_prio = 0; music_on = 0;
  game_state = ST_PLAY;
  start_wave();
  hud_dirty = 0xFF; hud_flush(); msg_flush();
  if (demo) print_yel(9, 2, "PUSH BUTTON 1");
  SMS_displayOn();
  if (!demo) PSGPlayNoRepeat((void *)mus_start);

  while (game_state != ST_TITLE) {
    read_keys();
    if (SMS_queryPauseRequested()) {
      SMS_resetPauseRequest();
      PSGStop(); PSGSFXStop();
      for (;;) {
        SMS_waitForVBlank();
        if (SMS_queryPauseRequested()) { SMS_resetPauseRequest(); break; }
      }
      if (music_on) PSGResume();
      read_keys();
    }
    frame++; loops++;
    update_player();
    update_groups();
    update_enemies();
    update_pbullets();
    update_ebullets();
    update_astro();
    update_phase();
    build_sprites();
    SMS_waitForVBlank();
    SMS_copySpritestoSAT();
    field_update();
    hud_flush();
    msg_flush();
  }
  PSGStop(); PSGSFXStop();
  if (demo) { demo = 0; return; }
  for (i = 0; i < 6; i++) {
    if (score[i] > hiscore[i]) {
      for (i = 0; i < 6; i++) hiscore[i] = score[i];
      break;
    }
    if (score[i] < hiscore[i]) break;
  }
}

void main(void) {
  u8 i;
  PSGPort = 0x9F; PSGPort = 0xBF; PSGPort = 0xDF; PSGPort = 0xFF;
  SMS_displayOff();
  SMS_useFirstHalfTilesforSprites(0);
  SMS_setSpriteMode(SPRITEMODE_TALL);
  SMS_autoSetUpTextRenderer();
  SMS_loadTiles(field_tiles, FIELD_BASE, sizeof(field_tiles));
  SMS_loadTiles(logo_tiles, LOGO_BASE, sizeof(logo_tiles));
  SMS_loadTiles(sprite_tiles, 256, sizeof(sprite_tiles));
  for (i = 0; i < 16; i++) SMS_setBGPaletteColor(i, 0);
  SMS_setBGPaletteColor(1, RGB(3,3,3));
  SMS_setBGPaletteColor(14, RGB(3,3,0));
  SMS_setBGPaletteColor(15, RGB(3,1,0));
  SMS_loadSpritePalette(spr_pal);
  SMS_setBackdropColor(0);
  hiscore[1] = 1;                      /* 010000 */
  SMS_setFrameInterruptHandler(&frame_interrupt);
  for (;;) {
    title();
    play();
  }
}

SMS_EMBED_SEGA_ROM_HEADER(9999, 0);
SMS_EMBED_SDSC_HEADER_AUTO_DATE(1, 0, "Claude",
    "Juno First SMS",
    "A clone of Konami's Juno First for the Sega Master System. Built with devkitSMS.");
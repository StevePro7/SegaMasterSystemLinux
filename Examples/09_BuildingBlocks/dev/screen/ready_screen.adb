M:ready_screen
F:G$screen_ready_screen_load$0$0({2}DF,SV:S),Z,0,0,0,0,0
F:G$screen_ready_screen_update$0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Lready_screen.screen_ready_screen_update$screen_type$1$57({2}DG,SC:U),B,1,4
S:Lready_screen.screen_ready_screen_update$input$1$58({1}SC:U),R,0,0,[l]
T:Fready_screen$tag_struct_gamer_object[({0}S:S$kidX$0$0({1}SC:U),Z,0,0)({1}S:S$kidY$0$0({1}SC:U),Z,0,0)({2}S:S$velZ$0$0({1}SC:U),Z,0,0)({3}S:S$steps$0$0({1}SC:U),Z,0,0)({4}S:S$kidColor$0$0({1}SC:U),Z,0,0)({5}S:S$kidFrame$0$0({1}SC:U),Z,0,0)({6}S:S$kidTile$0$0({2}SI:U),Z,0,0)({8}S:S$direction$0$0({1}SC:U),Z,0,0)({9}S:S$lifecycle$0$0({1}SC:U),Z,0,0)({10}S:S$moveFrame$0$0({1}SC:U),Z,0,0)({11}S:S$pathIndex$0$0({1}SC:U),Z,0,0)({12}S:S$prevIndex$0$0({1}SC:U),Z,0,0)]
T:Fready_screen$tag_struct_enemy_object[({0}S:S$index$0$0({1}SC:U),Z,0,0)({1}S:S$enemyX$0$0({1}SC:U),Z,0,0)({2}S:S$enemyY$0$0({1}SC:U),Z,0,0)({3}S:S$color$0$0({1}SC:U),Z,0,0)({4}S:S$frame$0$0({1}SC:U),Z,0,0)({5}S:S$delay$0$0({1}SC:U),Z,0,0)({6}S:S$timer$0$0({1}SC:U),Z,0,0)({7}S:S$base$0$0({2}SI:U),Z,0,0)({9}S:S$tile$0$0({2}SI:U),Z,0,0)]
S:G$global_enemy_objects$0$0({33}DA3d,STtag_struct_enemy_object:S),E,0,0
S:G$global_gamer_object$0$0({13}STtag_struct_gamer_object:S),E,0,0
S:G$devkit_SMS_init$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_displayOn$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_displayOff$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_mapROMBank$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_setBGScrollX$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_setBGScrollY$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_enableSRAM$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_enableSRAMBank$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_disableSRAM$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_setSpriteMode$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_useFirstHalfTilesforSprites_False$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_useFirstHalfTilesforSprites_True$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_VDPturnOnFeature$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_loadPSGaidencompressedTiles$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_loadSTMcompressedTileMap$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_loadBGPalette$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_loadSpritePalette$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_setSpritePaletteColor$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_setNextTileatXY$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_setTile$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_loadTileMap$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_addSprite$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_addSprite_bulk8$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_addSprite_bulk12$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_initSprites$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_finalizeSprites$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_waitForVBlank$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_copySpritestoSAT$0$0({2}DF,SV:S),C,0,0
S:G$devkit_UNSAFE_SMS_copySpritestoSAT$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_queryPauseRequested$0$0({2}DF,SC:U),C,0,0
S:G$devkit_SMS_resetPauseRequest$0$0({2}DF,SV:S),C,0,0
S:G$devkit_isCollisionDetected$0$0({2}DF,SC:U),C,0,0
S:G$devkit_SMS_getKeysStatus$0$0({2}DF,SI:U),C,0,0
S:G$devkit_PORT_A_KEY_UP$0$0({2}DF,SI:U),C,0,0
S:G$devkit_PORT_A_KEY_DOWN$0$0({2}DF,SI:U),C,0,0
S:G$devkit_PORT_A_KEY_LEFT$0$0({2}DF,SI:U),C,0,0
S:G$devkit_PORT_A_KEY_RIGHT$0$0({2}DF,SI:U),C,0,0
S:G$devkit_PORT_A_KEY_1$0$0({2}DF,SI:U),C,0,0
S:G$devkit_PORT_A_KEY_2$0$0({2}DF,SI:U),C,0,0
S:G$devkit_SPRITEMODE_NORMAL$0$0({2}DF,SC:U),C,0,0
S:G$devkit_VDPFEATURE_HIDEFIRSTCOL$0$0({2}DF,SI:U),C,0,0
S:G$devkit_PSGPlay$0$0({2}DF,SV:S),C,0,0
S:G$devkit_PSGCancelLoop$0$0({2}DF,SV:S),C,0,0
S:G$devkit_PSGPlayNoRepeat$0$0({2}DF,SV:S),C,0,0
S:G$devkit_PSGStop$0$0({2}DF,SV:S),C,0,0
S:G$devkit_PSGResume$0$0({2}DF,SV:S),C,0,0
S:G$devkit_PSGGetStatus$0$0({2}DF,SC:U),C,0,0
S:G$devkit_PSGSetMusicVolumeAttenuation$0$0({2}DF,SV:S),C,0,0
S:G$devkit_PSGSFXPlay$0$0({2}DF,SV:S),C,0,0
S:G$devkit_PSGSFXPlayLoop$0$0({2}DF,SV:S),C,0,0
S:G$devkit_PSGSFXCancelLoop$0$0({2}DF,SV:S),C,0,0
S:G$devkit_PSGSFXStop$0$0({2}DF,SV:S),C,0,0
S:G$devkit_PSGSFXGetStatus$0$0({2}DF,SC:U),C,0,0
S:G$devkit_PSGSilenceChannels$0$0({2}DF,SV:S),C,0,0
S:G$devkit_PSGRestoreVolumes$0$0({2}DF,SV:S),C,0,0
S:G$devkit_PSGFrame$0$0({2}DF,SV:S),C,0,0
S:G$devkit_PSGSFXFrame$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SFX_CHANNEL2$0$0({2}DF,SC:U),C,0,0
S:G$devkit_SFX_CHANNEL3$0$0({2}DF,SC:U),C,0,0
S:G$devkit_SFX_CHANNELS2AND3$0$0({2}DF,SC:U),C,0,0
S:G$engine_content_manager_load_tiles$0$0({2}DF,SV:S),C,0,0
S:G$engine_content_manager_load_sprites$0$0({2}DF,SV:S),C,0,0
S:G$engine_content_manager_load_splash$0$0({2}DF,SV:S),C,0,0
S:G$engine_enemy_manager_load$0$0({2}DF,SV:S),C,0,0
S:G$engine_enemy_manager_toggle_color$0$0({2}DF,SV:S),C,0,0
S:G$engine_enemy_manager_toggle_frame$0$0({2}DF,SV:S),C,0,0
S:G$engine_enemy_manager_draw$0$0({2}DF,SV:S),C,0,0
S:G$engine_gamer_manager_load$0$0({2}DF,SV:S),C,0,0
S:G$engine_gamer_manager_toggle_color$0$0({2}DF,SV:S),C,0,0
S:G$engine_gamer_manager_toggle_frame$0$0({2}DF,SV:S),C,0,0
S:G$engine_gamer_manager_setdirection$0$0({2}DF,SV:S),C,0,0
S:G$engine_gamer_manager_incmovements$0$0({2}DF,SV:S),C,0,0
S:G$engine_gamer_manager_setlifecycle$0$0({2}DF,SV:S),C,0,0
S:G$engine_gamer_manager_update$0$0({2}DF,SV:S),C,0,0
S:G$engine_gamer_manager_draw$0$0({2}DF,SV:S),C,0,0
S:G$engine_input_manager_update$0$0({2}DF,SV:S),C,0,0
S:G$engine_input_manager_hold_up$0$0({2}DF,SC:U),C,0,0
S:G$engine_input_manager_hold_down$0$0({2}DF,SC:U),C,0,0
S:G$engine_input_manager_hold_left$0$0({2}DF,SC:U),C,0,0
S:G$engine_input_manager_hold_right$0$0({2}DF,SC:U),C,0,0
S:G$engine_input_manager_hold_fire1$0$0({2}DF,SC:U),C,0,0
S:G$engine_input_manager_hold_fire2$0$0({2}DF,SC:U),C,0,0
S:G$engine_input_manager_move_up$0$0({2}DF,SC:U),C,0,0
S:G$engine_input_manager_move_down$0$0({2}DF,SC:U),C,0,0
S:G$engine_input_manager_move_left$0$0({2}DF,SC:U),C,0,0
S:G$engine_input_manager_move_right$0$0({2}DF,SC:U),C,0,0
S:G$engine_input_manager_move_fire1$0$0({2}DF,SC:U),C,0,0
S:G$engine_input_manager_move_fire2$0$0({2}DF,SC:U),C,0,0
S:G$engine_music_manager_play$0$0({2}DF,SV:S),C,0,0
S:G$engine_sound_manager_play$0$0({2}DF,SV:S),C,0,0
S:G$engine_text_manager_draw$0$0({2}DF,SV:S),C,0,0
S:G$engine_text_manager_names$0$0({2}DF,SV:S),C,0,0
S:G$engine_text_manager_space$0$0({2}DF,SV:S),C,0,0
S:G$atof$0$0({2}DF,SF:S),C,0,0
S:G$atoi$0$0({2}DF,SI:S),C,0,0
S:G$atol$0$0({2}DF,SL:S),C,0,0
S:G$_uitoa$0$0({2}DF,SV:S),C,0,0
S:G$_itoa$0$0({2}DF,SV:S),C,0,0
S:G$_ultoa$0$0({2}DF,SV:S),C,0,0
S:G$_ltoa$0$0({2}DF,SV:S),C,0,0
S:G$rand$0$0({2}DF,SI:S),C,0,0
S:G$srand$0$0({2}DF,SV:S),C,0,0
S:G$calloc$0$0({2}DF,DG,SV:S),C,0,0
S:G$malloc$0$0({2}DF,DG,SV:S),C,0,0
S:G$realloc$0$0({2}DF,DG,SV:S),C,0,0
S:G$free$0$0({2}DF,SV:S),C,0,0
S:G$abs$0$0({2}DF,SI:S),C,0,0
S:G$labs$0$0({2}DF,SL:S),C,0,0
S:G$mblen$0$0({2}DF,SI:S),C,0,0
S:G$mbtowc$0$0({2}DF,SI:S),C,0,0
S:G$wctomb$0$0({2}DF,SI:S),C,0,0
S:G$mbstowcs$0$0({2}DF,SI:U),C,0,0
S:G$wcstombs$0$0({2}DF,SI:U),C,0,0

;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module fixedbank
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _beat_texts
	.globl _over_texts
	.globl _laugh_texts
	.globl _query_texts
	.globl _boss_texts
	.globl _prep_texts
	.globl _villager_texts
	.globl _menus_texts
	.globl _shop_texts
	.globl _gold_texts
	.globl _fight_texts
	.globl _enemy_texts
	.globl _forest_texts
	.globl _life_texts
	.globl _armor_texts
	.globl _weapon_texts
	.globl _stats_texts
	.globl _diff_texts
	.globl _intro_texts
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
G$intro_texts$0_0$0==.
_intro_texts::
	.ds 20
G$diff_texts$0_0$0==.
_diff_texts::
	.ds 4
G$stats_texts$0_0$0==.
_stats_texts::
	.ds 16
G$weapon_texts$0_0$0==.
_weapon_texts::
	.ds 6
G$armor_texts$0_0$0==.
_armor_texts::
	.ds 6
G$life_texts$0_0$0==.
_life_texts::
	.ds 4
G$forest_texts$0_0$0==.
_forest_texts::
	.ds 4
G$enemy_texts$0_0$0==.
_enemy_texts::
	.ds 10
G$fight_texts$0_0$0==.
_fight_texts::
	.ds 6
G$gold_texts$0_0$0==.
_gold_texts::
	.ds 8
G$shop_texts$0_0$0==.
_shop_texts::
	.ds 16
G$menus_texts$0_0$0==.
_menus_texts::
	.ds 12
G$villager_texts$0_0$0==.
_villager_texts::
	.ds 60
G$prep_texts$0_0$0==.
_prep_texts::
	.ds 18
G$boss_texts$0_0$0==.
_boss_texts::
	.ds 4
G$query_texts$0_0$0==.
_query_texts::
	.ds 4
G$laugh_texts$0_0$0==.
_laugh_texts::
	.ds 6
G$over_texts$0_0$0==.
_over_texts::
	.ds 8
G$beat_texts$0_0$0==.
_beat_texts::
	.ds 22
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	.area _CODE
	.area _BANK3
Ffixedbank$__str_0$0_0$0 == .
	.area _BANK3
___str_0:
	.ascii "   YOU ARE A YOUNG HERO WHO"
	.db 0x00
	.area _CODE
Ffixedbank$__str_1$0_0$0 == .
	.area _BANK3
___str_1:
	.ascii "WISHES TO RID THE LAND FROM"
	.db 0x00
	.area _CODE
Ffixedbank$__str_2$0_0$0 == .
	.area _BANK3
___str_2:
	.ascii "A TERRIFYING CREATURE KNOWN"
	.db 0x00
	.area _CODE
Ffixedbank$__str_3$0_0$0 == .
	.area _BANK3
___str_3:
	.ascii "AS KOSCHEY THE IMMORTAL"
	.db 0x00
	.area _CODE
Ffixedbank$__str_4$0_0$0 == .
	.area _BANK3
___str_4:
	.db 0x00
	.area _CODE
Ffixedbank$__str_5$0_0$0 == .
	.area _BANK3
___str_5:
	.ascii "  RIGHT NOW ALL YOU HAVE IS"
	.db 0x00
	.area _CODE
Ffixedbank$__str_6$0_0$0 == .
	.area _BANK3
___str_6:
	.ascii "YOUR DAGGER AND YOUR WITS"
	.db 0x00
	.area _CODE
Ffixedbank$__str_7$0_0$0 == .
	.area _BANK3
___str_7:
	.ascii "YOU ENTER A VILLAGE TO BEGIN"
	.db 0x00
	.area _CODE
Ffixedbank$__str_8$0_0$0 == .
	.area _BANK3
___str_8:
	.ascii "YOUR ADVENTURE"
	.db 0x00
	.area _CODE
Ffixedbank$__str_9$0_0$0 == .
	.area _BANK3
___str_9:
	.ascii "EASY"
	.db 0x00
	.area _CODE
Ffixedbank$__str_10$0_0$0 == .
	.area _BANK3
___str_10:
	.ascii "HARD"
	.db 0x00
	.area _CODE
Ffixedbank$__str_11$0_0$0 == .
	.area _BANK3
___str_11:
	.ascii "WHAT SHALL WE DO?  "
	.db 0x00
	.area _CODE
Ffixedbank$__str_12$0_0$0 == .
	.area _BANK3
___str_12:
	.ascii "1) GO FOREST PATROL"
	.db 0x00
	.area _CODE
Ffixedbank$__str_13$0_0$0 == .
	.area _BANK3
___str_13:
	.ascii "2) PURCHASE AT SHOP"
	.db 0x00
	.area _CODE
Ffixedbank$__str_14$0_0$0 == .
	.area _BANK3
___str_14:
	.ascii "3) REST BY THE WELL"
	.db 0x00
	.area _CODE
Ffixedbank$__str_15$0_0$0 == .
	.area _BANK3
___str_15:
	.ascii "4) TALK TO VILLAGER"
	.db 0x00
	.area _CODE
Ffixedbank$__str_16$0_0$0 == .
	.area _BANK3
___str_16:
	.ascii "5) BEAT THE KOSCHEY"
	.db 0x00
	.area _CODE
Ffixedbank$__str_17$0_0$0 == .
	.area _BANK3
___str_17:
	.ascii "6) RETURN MAIN MENU"
	.db 0x00
	.area _CODE
Ffixedbank$__str_18$0_0$0 == .
	.area _BANK3
___str_18:
	.ascii "   SWORD"
	.db 0x00
	.area _CODE
Ffixedbank$__str_19$0_0$0 == .
	.area _BANK3
___str_19:
	.ascii "     AXE"
	.db 0x00
	.area _CODE
Ffixedbank$__str_20$0_0$0 == .
	.area _BANK3
___str_20:
	.ascii " TEGILAY"
	.db 0x00
	.area _CODE
Ffixedbank$__str_21$0_0$0 == .
	.area _BANK3
___str_21:
	.ascii "KOLCHUGA"
	.db 0x00
	.area _CODE
Ffixedbank$__str_22$0_0$0 == .
	.area _BANK3
___str_22:
	.ascii " +1 LIFE"
	.db 0x00
	.area _CODE
Ffixedbank$__str_23$0_0$0 == .
	.area _BANK3
___str_23:
	.ascii "YOU ARE IN THE FOREST!"
	.db 0x00
	.area _CODE
Ffixedbank$__str_24$0_0$0 == .
	.area _BANK3
___str_24:
	.ascii "YOU ENCOUNTERED ENEMY: "
	.db 0x00
	.area _CODE
Ffixedbank$__str_25$0_0$0 == .
	.area _BANK3
___str_25:
	.ascii "  RAZBOYNIK"
	.db 0x00
	.area _CODE
Ffixedbank$__str_26$0_0$0 == .
	.area _BANK3
___str_26:
	.ascii "HUNGRY WOLF"
	.db 0x00
	.area _CODE
Ffixedbank$__str_27$0_0$0 == .
	.area _BANK3
___str_27:
	.ascii "   KIKIMORA"
	.db 0x00
	.area _CODE
Ffixedbank$__str_28$0_0$0 == .
	.area _BANK3
___str_28:
	.ascii "      LESHY"
	.db 0x00
	.area _CODE
Ffixedbank$__str_29$0_0$0 == .
	.area _BANK3
___str_29:
	.ascii "  BABA YAGA"
	.db 0x00
	.area _CODE
Ffixedbank$__str_30$0_0$0 == .
	.area _BANK3
___str_30:
	.ascii "WHAT WILL YOU DO?  "
	.db 0x00
	.area _CODE
Ffixedbank$__str_31$0_0$0 == .
	.area _BANK3
___str_31:
	.ascii "1) RUN  "
	.db 0x00
	.area _CODE
Ffixedbank$__str_32$0_0$0 == .
	.area _BANK3
___str_32:
	.ascii "2) FIGHT"
	.db 0x00
	.area _CODE
Ffixedbank$__str_33$0_0$0 == .
	.area _BANK3
___str_33:
	.ascii "    VICTORY!  "
	.db 0x00
	.area _CODE
Ffixedbank$__str_34$0_0$0 == .
	.area _BANK3
___str_34:
	.ascii "YOU GOT GOLD -"
	.db 0x00
	.area _CODE
Ffixedbank$__str_35$0_0$0 == .
	.area _BANK3
___str_35:
	.ascii "VILLAGE SHOP"
	.db 0x00
	.area _CODE
Ffixedbank$__str_36$0_0$0 == .
	.area _BANK3
___str_36:
	.ascii "1) SWORD   "
	.db 0x00
	.area _CODE
Ffixedbank$__str_37$0_0$0 == .
	.area _BANK3
___str_37:
	.ascii "2) AXE     "
	.db 0x00
	.area _CODE
Ffixedbank$__str_38$0_0$0 == .
	.area _BANK3
___str_38:
	.ascii "3) TEGILAY "
	.db 0x00
	.area _CODE
Ffixedbank$__str_39$0_0$0 == .
	.area _BANK3
___str_39:
	.ascii "4) KOLCHUGA"
	.db 0x00
	.area _CODE
Ffixedbank$__str_40$0_0$0 == .
	.area _BANK3
___str_40:
	.ascii "5) LIFE    "
	.db 0x00
	.area _CODE
Ffixedbank$__str_41$0_0$0 == .
	.area _BANK3
___str_41:
	.ascii "   MENU"
	.db 0x00
	.area _CODE
Ffixedbank$__str_42$0_0$0 == .
	.area _BANK3
___str_42:
	.ascii "1) EXIT GAME"
	.db 0x00
	.area _CODE
Ffixedbank$__str_43$0_0$0 == .
	.area _BANK3
___str_43:
	.ascii "2) RESTART  "
	.db 0x00
	.area _CODE
Ffixedbank$__str_44$0_0$0 == .
	.area _BANK3
___str_44:
	.ascii "3) CONTINUE  "
	.db 0x00
	.area _CODE
Ffixedbank$__str_45$0_0$0 == .
	.area _BANK3
___str_45:
	.ascii "  YOU LOST SOME MONEY!     "
	.db 0x00
	.area _CODE
Ffixedbank$__str_46$0_0$0 == .
	.area _BANK3
___str_46:
	.ascii " DID YOU KNOW THAT YOU CAN "
	.db 0x00
	.area _CODE
Ffixedbank$__str_47$0_0$0 == .
	.area _BANK3
___str_47:
	.ascii " ONLY HAVE ONE LIFE POTION "
	.db 0x00
	.area _CODE
Ffixedbank$__str_48$0_0$0 == .
	.area _BANK3
___str_48:
	.ascii " AT A TIME?                "
	.db 0x00
	.area _CODE
Ffixedbank$__str_49$0_0$0 == .
	.area _BANK3
___str_49:
	.ascii "DID YOU KNOW THAT A TEGILAY"
	.db 0x00
	.area _CODE
Ffixedbank$__str_50$0_0$0 == .
	.area _BANK3
___str_50:
	.ascii "IS MADE OF LEATHER, AND THE"
	.db 0x00
	.area _CODE
Ffixedbank$__str_51$0_0$0 == .
	.area _BANK3
___str_51:
	.ascii "KOLCHUGA IS MADE OF STEEL? "
	.db 0x00
	.area _CODE
Ffixedbank$__str_52$0_0$0 == .
	.area _BANK3
___str_52:
	.ascii "  TRULY THE AXE IS THE     "
	.db 0x00
	.area _CODE
Ffixedbank$__str_53$0_0$0 == .
	.area _BANK3
___str_53:
	.ascii "  GREATEST WEAPON OF OUR   "
	.db 0x00
	.area _CODE
Ffixedbank$__str_54$0_0$0 == .
	.area _BANK3
___str_54:
	.ascii "  PEOPLE!                  "
	.db 0x00
	.area _CODE
Ffixedbank$__str_55$0_0$0 == .
	.area _BANK3
___str_55:
	.ascii " SOMETIMES ITS WISE TO RUN "
	.db 0x00
	.area _CODE
Ffixedbank$__str_56$0_0$0 == .
	.area _BANK3
___str_56:
	.ascii " AWAY                      "
	.db 0x00
	.area _CODE
Ffixedbank$__str_57$0_0$0 == .
	.area _BANK3
___str_57:
	.ascii " YOU BETTER BE KNOWN AS A  "
	.db 0x00
	.area _CODE
Ffixedbank$__str_58$0_0$0 == .
	.area _BANK3
___str_58:
	.ascii " HERO TO CHALLENGE KOSCHEY "
	.db 0x00
	.area _CODE
Ffixedbank$__str_59$0_0$0 == .
	.area _BANK3
___str_59:
	.ascii " DID YOU KNOW THAT WOLVES  "
	.db 0x00
	.area _CODE
Ffixedbank$__str_60$0_0$0 == .
	.area _BANK3
___str_60:
	.ascii " ONLY ATTACK WHEN THEY ARE "
	.db 0x00
	.area _CODE
Ffixedbank$__str_61$0_0$0 == .
	.area _BANK3
___str_61:
	.ascii " HUNGRY?"
	.db 0x00
	.area _CODE
Ffixedbank$__str_62$0_0$0 == .
	.area _BANK3
___str_62:
	.ascii " SOME PEOPLE SAY THEY SAW  "
	.db 0x00
	.area _CODE
Ffixedbank$__str_63$0_0$0 == .
	.area _BANK3
___str_63:
	.ascii " BABA YAGA IN THE FOREST,  "
	.db 0x00
	.area _CODE
Ffixedbank$__str_64$0_0$0 == .
	.area _BANK3
___str_64:
	.ascii " BUT I DON'T BELIEVE THEM  "
	.db 0x00
	.area _CODE
Ffixedbank$__str_65$0_0$0 == .
	.area _BANK3
___str_65:
	.ascii "  CYKA, BLYAT!             "
	.db 0x00
	.area _CODE
Ffixedbank$__str_66$0_0$0 == .
	.area _BANK3
___str_66:
	.ascii "  YOU FOUND SOME MONEY!   "
	.db 0x00
	.area _CODE
Ffixedbank$__str_67$0_0$0 == .
	.area _BANK3
___str_67:
	.ascii " THIS IS THE MOST IMPORTANT"
	.db 0x00
	.area _CODE
Ffixedbank$__str_68$0_0$0 == .
	.area _BANK3
___str_68:
	.ascii " BATTLE OF YOUR LIFE.      "
	.db 0x00
	.area _CODE
Ffixedbank$__str_69$0_0$0 == .
	.area _BANK3
___str_69:
	.ascii " CAN YOU HANDLE THE BATTLE?"
	.db 0x00
	.area _CODE
Ffixedbank$__str_70$0_0$0 == .
	.area _BANK3
___str_70:
	.ascii "     1)  YES"
	.db 0x00
	.area _CODE
Ffixedbank$__str_71$0_0$0 == .
	.area _BANK3
___str_71:
	.ascii "     2)  NO"
	.db 0x00
	.area _CODE
Ffixedbank$__str_72$0_0$0 == .
	.area _BANK3
___str_72:
	.ascii "1) BEG FOR YOUR LIFE"
	.db 0x00
	.area _CODE
Ffixedbank$__str_73$0_0$0 == .
	.area _BANK3
___str_73:
	.ascii "2) FIGHT!!          "
	.db 0x00
	.area _CODE
Ffixedbank$__str_74$0_0$0 == .
	.area _BANK3
___str_74:
	.ascii "SO YOU HAVE COME TO CALLENGE"
	.db 0x00
	.area _CODE
Ffixedbank$__str_75$0_0$0 == .
	.area _BANK3
___str_75:
	.ascii "ME FOOLISH MORTAL? VERY WELL"
	.db 0x00
	.area _CODE
Ffixedbank$__str_76$0_0$0 == .
	.area _BANK3
___str_76:
	.ascii "HA HA HA"
	.db 0x00
	.area _CODE
Ffixedbank$__str_77$0_0$0 == .
	.area _BANK3
___str_77:
	.ascii "YOU DIE!"
	.db 0x00
	.area _CODE
Ffixedbank$__str_78$0_0$0 == .
	.area _BANK3
___str_78:
	.ascii "YOU FOOL"
	.db 0x00
	.area _CODE
Ffixedbank$__str_79$0_0$0 == .
	.area _BANK3
___str_79:
	.ascii "YOU ARE DEAD!"
	.db 0x00
	.area _CODE
Ffixedbank$__str_80$0_0$0 == .
	.area _BANK3
___str_80:
	.ascii "  GAME OVER  "
	.db 0x00
	.area _CODE
Ffixedbank$__str_81$0_0$0 == .
	.area _BANK3
___str_81:
	.ascii "      CONGLATURATION!!    "
	.db 0x00
	.area _CODE
Ffixedbank$__str_82$0_0$0 == .
	.area _BANK3
___str_82:
	.ascii "YOU HAVE COMPLETED A GREAT "
	.db 0x00
	.area _CODE
Ffixedbank$__str_83$0_0$0 == .
	.area _BANK3
___str_83:
	.ascii "GAME AND PROVED THE JUSTICE"
	.db 0x00
	.area _CODE
Ffixedbank$__str_84$0_0$0 == .
	.area _BANK3
___str_84:
	.ascii "OF OUR CULTURE."
	.db 0x00
	.area _CODE
Ffixedbank$__str_85$0_0$0 == .
	.area _BANK3
___str_85:
	.ascii " NOW GO AND REST OUR HERO!"
	.db 0x00
	.area _CODE
	.area _INITIALIZER
Ffixedbank$__xinit_intro_texts$0_0$0 == .
__xinit__intro_texts:
	.dw ___str_0
	.dw ___str_1
	.dw ___str_2
	.dw ___str_3
	.dw ___str_4
	.dw ___str_5
	.dw ___str_6
	.dw ___str_4
	.dw ___str_7
	.dw ___str_8
Ffixedbank$__xinit_diff_texts$0_0$0 == .
__xinit__diff_texts:
	.dw ___str_9
	.dw ___str_10
Ffixedbank$__xinit_stats_texts$0_0$0 == .
__xinit__stats_texts:
	.dw ___str_11
	.dw ___str_4
	.dw ___str_12
	.dw ___str_13
	.dw ___str_14
	.dw ___str_15
	.dw ___str_16
	.dw ___str_17
Ffixedbank$__xinit_weapon_texts$0_0$0 == .
__xinit__weapon_texts:
	.dw ___str_4
	.dw ___str_18
	.dw ___str_19
Ffixedbank$__xinit_armor_texts$0_0$0 == .
__xinit__armor_texts:
	.dw ___str_4
	.dw ___str_20
	.dw ___str_21
Ffixedbank$__xinit_life_texts$0_0$0 == .
__xinit__life_texts:
	.dw ___str_4
	.dw ___str_22
Ffixedbank$__xinit_forest_texts$0_0$0 == .
__xinit__forest_texts:
	.dw ___str_23
	.dw ___str_24
Ffixedbank$__xinit_enemy_texts$0_0$0 == .
__xinit__enemy_texts:
	.dw ___str_25
	.dw ___str_26
	.dw ___str_27
	.dw ___str_28
	.dw ___str_29
Ffixedbank$__xinit_fight_texts$0_0$0 == .
__xinit__fight_texts:
	.dw ___str_30
	.dw ___str_31
	.dw ___str_32
Ffixedbank$__xinit_gold_texts$0_0$0 == .
__xinit__gold_texts:
	.dw ___str_33
	.dw ___str_4
	.dw ___str_4
	.dw ___str_34
Ffixedbank$__xinit_shop_texts$0_0$0 == .
__xinit__shop_texts:
	.dw ___str_35
	.dw ___str_4
	.dw ___str_4
	.dw ___str_36
	.dw ___str_37
	.dw ___str_38
	.dw ___str_39
	.dw ___str_40
Ffixedbank$__xinit_menus_texts$0_0$0 == .
__xinit__menus_texts:
	.dw ___str_41
	.dw ___str_4
	.dw ___str_4
	.dw ___str_42
	.dw ___str_43
	.dw ___str_44
Ffixedbank$__xinit_villager_texts$0_0$0 == .
__xinit__villager_texts:
	.dw ___str_45
	.dw ___str_4
	.dw ___str_4
	.dw ___str_46
	.dw ___str_47
	.dw ___str_48
	.dw ___str_49
	.dw ___str_50
	.dw ___str_51
	.dw ___str_52
	.dw ___str_53
	.dw ___str_54
	.dw ___str_55
	.dw ___str_56
	.dw ___str_4
	.dw ___str_57
	.dw ___str_58
	.dw ___str_4
	.dw ___str_59
	.dw ___str_60
	.dw ___str_61
	.dw ___str_62
	.dw ___str_63
	.dw ___str_64
	.dw ___str_65
	.dw ___str_4
	.dw ___str_4
	.dw ___str_66
	.dw ___str_4
	.dw ___str_4
Ffixedbank$__xinit_prep_texts$0_0$0 == .
__xinit__prep_texts:
	.dw ___str_67
	.dw ___str_68
	.dw ___str_4
	.dw ___str_4
	.dw ___str_69
	.dw ___str_4
	.dw ___str_4
	.dw ___str_70
	.dw ___str_71
Ffixedbank$__xinit_boss_texts$0_0$0 == .
__xinit__boss_texts:
	.dw ___str_72
	.dw ___str_73
Ffixedbank$__xinit_query_texts$0_0$0 == .
__xinit__query_texts:
	.dw ___str_74
	.dw ___str_75
Ffixedbank$__xinit_laugh_texts$0_0$0 == .
__xinit__laugh_texts:
	.dw ___str_76
	.dw ___str_77
	.dw ___str_78
Ffixedbank$__xinit_over_texts$0_0$0 == .
__xinit__over_texts:
	.dw ___str_79
	.dw ___str_4
	.dw ___str_4
	.dw ___str_80
Ffixedbank$__xinit_beat_texts$0_0$0 == .
__xinit__beat_texts:
	.dw ___str_81
	.dw ___str_4
	.dw ___str_4
	.dw ___str_4
	.dw ___str_82
	.dw ___str_83
	.dw ___str_84
	.dw ___str_4
	.dw ___str_4
	.dw ___str_4
	.dw ___str_85
	.area _CABS (ABS)

# SegaMasterSystemLinux
Sega Master System code repositories for Linux
new code added daily...!!

WavSplit
E:\GitHub\StevePro7\Blogger\Z80\_Setup04

GENERAL
19/12/2021
input_manager	inject direction	thinner API
consolidate tiles	e.g. font

font_manager	can I have dynamic no. "0" padding?
use latest SMS Mgr
all working on latest devkitSMS e.g. SDCC 4.1.0
on Win + Lin

IMPORTANT
follow example where I now have content folder
and gfx and psg sub folders are there
Example:
devkitSMScode\00_library\dev\content

Generalize the game.h info


Very Basic Tutorial of C for Master System
https://www.elotrolado.net/hilo_tutorial-muy-basico-de-c-para-master-system_2208028_s350
19/12/2021


BLOCK
SegaMasterSystemLinux\Examples\05_InputDetectionBlock
replicates the example from Candy Kid with sprite going behind block
e.g. to simulate Pacman exits - must use the sprite palette here


SCROLL
SegaMasterSystemLinux\Examples\05_InputDetectionNewDevkit
This example replicates Gotris title screen scrolling
also using the latest devkitSMS library in devkitSMScode


Input Manager	stream line
E:\GitHub\StevePro7\SegaMasterSystemLinux\Examples\05_InputDetectionBlock\dev\engine\input_manager.c


Sections
12/02/2022

Reference:
E:\GitHub\StevePro8\SegaMasterSystemLinux\TurtleBridge\mario\24-BackgroundSpriteTilesTest\dev\engine\tile_manager.c
	engine_tile_manager_draw_flip( tile_type_section01,  0, 12, 16, 10, 6, 16 );
	engine_tile_manager_draw_norm( tile_type_section01, 23, 12, 16, 10, 0, 9 );

i.e.
section01 is 16x tiles wide but make the bonus level 9x wide
i.e. 10x but less 1x tile for the hidden left column 	16- 6	10	but 0 col is hidden
then mirror 9x on the other side						0 - 9	9

that means there are 13x ttiles in between
1 + 9 + 13 + 9 = 32
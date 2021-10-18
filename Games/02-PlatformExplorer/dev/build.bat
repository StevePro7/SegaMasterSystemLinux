@echo off

REM https://stackoverflow.com/questions/673523/how-do-i-measure-execution-time-of-a-command-on-the-windows-command-line
:: Calculate the start timestamp
set _time=%time: =0%
set /a _hours=100%_time:~0,2%%%100,_min=100%_time:~3,2%%%100,_sec=100%_time:~6,2%%%100,_cs=%_time:~9,2%
set /a _started=_hours*60*60*100+_min*60*100+_sec*100+_cs


REM build.bat assumes the following scripts been re-run and REL files cached:
REM bank*.bat
REM gfx.bat
REM psg.bat

:: Content
::folder2c ../gfx gfx
::sdcc --debug -c -mz80 --opt-code-speed --peep-file peep-rules.txt --std-c99 gfx.c

::folder2c ../psg psg
::sdcc --debug -c -mz80 --opt-code-speed --peep-file peep-rules.txt --std-c99 psg.c

cd engine
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 asm_manager.c
cd ..

cd source
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 _sms_manager.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 _snd_manager.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 global_manager.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 debug_manager.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 hack_manager.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 level_object.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 anim_object.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 audio_object.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 intro_object.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 tutorial_object.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 content_manager.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 font_manager.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 text_manager.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 delay_manager.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 reset_manager.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 sprite_manager.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 tile_manager.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 memo_manager.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 level_manager.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 anim_manager.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 input_manager.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 player_manager.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 enemy_manager.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 score_manager.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 stats_manager.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 audio_manager.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 game_manager.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 state_manager.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 none_screen.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 splash_screen.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 intro_screen.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 begin_screen.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 title_screen.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 entry_screen.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 diff_screen.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 pace_screen.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 level_screen.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 view_screen.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 init_screen.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 load_screen.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 ready_screen.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 play_screen.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 reset_screen.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 pass_screen.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 gems_screen.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 dead_screen.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 cont_screen.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 over_screen.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 beat_screen.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 test_screen.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 func_screen.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 screen_manager.c
cd ..

REM echo Build main
sdcc --debug -c -mz80 --opt-code-speed --peep-file peep-rules.txt --std-c99 main.c


:: Calculate the difference in cSeconds
set _time=%time: =0%
set /a _hours=100%_time:~0,2%%%100,_min=100%_time:~3,2%%%100,_sec=100%_time:~6,2%%%100,_cs=%_time:~9,2%
set /a _duration=_hours*60*60*100+_min*60*100+_sec*100+_cs-_started

:: Populate variables for rendering (100+ needed for padding)
set /a _hours=_duration/60/60/100,_min=100+_duration/60/100%%60,_sec=100+(_duration/100%%60%%60),_cs=100+_duration%%100

echo.
echo Time taken: %_sec:~-2%.%_cs:~-2% secs
echo.


::prints something like:
::Done at: 12:37:53,70 took: 0:02:03.55




REM echo Binary output
::ihx2sms output.ihx output.sms

REM copy output.sms
REM copy output.sms ..
REM copy output.sms ..\PlatformExplorer-3.1.sms
REM copy output.sms ..\asm
REM cd ..\asm
REM smsexamine.exe output.sms
REM cd ..\dev

REM https://www.askingbox.com/question/batch-script-delete-file-if-it-exists
cd engine
if exist "*.asm" del "*.asm" > nul
if exist "*.lst" del "*.lst" > nul
if exist "*.sym" del "*.sym" > nul
cd ..
cd source
if exist "*.asm" del "*.asm" > nul
if exist "*.lst" del "*.lst" > nul
if exist "*.sym" del "*.sym" > nul
cd ..

if exist "*.asm" del "*.asm" > nul
if exist "*.ihx" del "*.ihx" > nul
if exist "*.lk"  del "*.lk"  > nul
if exist "*.lst" del "*.lst" > nul
REM if exist "*.map" del "*.map" > nul
if exist "*.noi" del "*.noi" > nul
REM if exist "*.rel" del "*.rel" > nul
if exist "*.sym" del "*.sym" > nul


REM C:\SEGA\Fusion\fusion.exe output.sms
REM C:\SEGA\Meka\mekaw.exe output.sms
::java -jar C:\SEGA\Emulicious\emulicious.jar output.sms
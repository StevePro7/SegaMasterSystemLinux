@echo off

:: Time build START
:: Reference: https://stackoverflow.com/questions/673523/how-do-i-measure-execution-time-of-a-command-on-the-windows-command-line
set _time=%time: =0%
set /a _hours=100%_time:~0,2%%%100,_min=100%_time:~3,2%%%100,_sec=100%_time:~6,2%%%100,_cs=%_time:~9,2%
set /a _started=_hours*60*60*100+_min*60*100+_sec*100+_cs


:: Compile
cd devkit
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 _sms_manager.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 _snd_manager.c
cd ..

cd engine
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 asm_manager.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 audio_manager.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 content_manager.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 enemy_manager.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 font_manager.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 hack_manager.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 gamer_manager.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 input_manager.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 path_manager.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 screen_manager.c
sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 sprite_manager.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 text_manager.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 tree_manager.c
cd ..

cd object
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 enemy_object.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 gamer_object.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 path_object.c
cd ..

cd screen
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 none_screen.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 start_screen.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 title_screen.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 ready_screen.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 play_screen.c
cd ..

sdcc --debug -c -mz80 --opt-code-speed --peep-file peep-rules.txt --std-c99 main.c


:: Time build -END-
set _time=%time: =0%
set /a _hours=100%_time:~0,2%%%100,_min=100%_time:~3,2%%%100,_sec=100%_time:~6,2%%%100,_cs=%_time:~9,2%
set /a _duration=_hours*60*60*100+_min*60*100+_sec*100+_cs-_started
set /a _hours=_duration/60/60/100,_min=100+_duration/60/100%%60,_sec=100+(_duration/100%%60%%60),_cs=100+_duration%%100
echo.
echo Time taken: %_sec:~-2%.%_cs:~-2% secs
echo.


:: Link
sdcc --debug -o output.ihx --Werror --opt-code-speed -mz80 --no-std-crt0 --data-loc 0xC000 ^
../crt0/crt0_sms.rel main.rel ^
../lib/SMSlib.lib ^
../lib/PSGlib.rel ^
engine/asm_manager.rel ^
engine/audio_manager.rel ^
engine/content_manager.rel ^
engine/enemy_manager.rel ^
engine/font_manager.rel ^
engine/gamer_manager.rel ^
engine/hack_manager.rel ^
engine/input_manager.rel ^
engine/path_manager.rel ^
engine/screen_manager.rel ^
engine/sprite_manager.rel ^
engine/text_manager.rel ^
engine/tree_manager.rel ^
object/enemy_object.rel ^
object/gamer_object.rel ^
object/path_object.rel ^
screen/none_screen.rel ^
screen/start_screen.rel ^
screen/title_screen.rel ^
screen/ready_screen.rel ^
screen/play_screen.rel ^
devkit/_sms_manager.rel ^
devkit/_snd_manager.rel ^
content/gfx.rel ^
content/psg.rel

:: Execute
ihx2sms output.ihx output.sms

:: Delete
cd devkit
if exist "*.asm" del "*.asm" > nul
if exist "*.lst" del "*.lst" > nul
if exist "*.sym" del "*.sym" > nul
cd ..

cd engine
if exist "*.asm" del "*.asm" > nul
if exist "*.lst" del "*.lst" > nul
if exist "*.sym" del "*.sym" > nul
cd ..

cd object
if exist "*.asm" del "*.asm" > nul
if exist "*.lst" del "*.lst" > nul
if exist "*.sym" del "*.sym" > nul
cd ..

cd screen
if exist "*.asm" del "*.asm" > nul
if exist "*.lst" del "*.lst" > nul
if exist "*.sym" del "*.sym" > nul
cd ..

if exist "*.asm" del "*.asm" > nul
if exist "*.ihx" del "*.ihx" > nul
if exist "*.lk"  del "*.lk"  > nul
if exist "*.lst" del "*.lst" > nul
if exist "*.noi" del "*.noi" > nul
if exist "*.sym" del "*.sym" > nul

:: Run
::java -jar C:/SEGA/Emulicious/Emulicious.jar output.sms
output.sms
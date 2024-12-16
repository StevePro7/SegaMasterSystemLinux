@echo off

:: Time build START
:: Reference: https://stackoverflow.com/questions/673523/how-do-i-measure-execution-time-of-a-command-on-the-windows-command-line
set _time=%time: =0%
set /a _hours=100%_time:~0,2%%%100,_min=100%_time:~3,2%%%100,_sec=100%_time:~6,2%%%100,_cs=%_time:~9,2%
set /a _started=_hours*60*60*100+_min*60*100+_sec*100+_cs

:: Compile
::cd banks
::sdcc --debug -c -mz80 --opt-code-speed --peep-file peep-rules.txt --std-c99 --constseg BANK2 bank2.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file peep-rules.txt --std-c99 --constseg BANK3 bank3.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file peep-rules.txt --std-c99 --constseg BANK4 bank4.c
::cd ..

::cd devkit
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 _sms_manager.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 _snd_manager.c
sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 _gsl_manager.c
::cd ..

::cd ../lib
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../dev/peep-rules.txt --std-c99 GSLib.c
::cd ../dev

::cd engine
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 soundengine.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 spriteengine.c
::cd ..

::cd object
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 enemy.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 gamelogic.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 montylib.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 player.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 resources.c
::cd ..

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
 -Wl-b_BANK2=0x8000 -Wl-b_BANK3=0x8000 -Wl-b_BANK4=0x8000 ^
../lib/SMSlib.lib ../lib/PSGLib.rel ../lib/GSLib.rel ^
banks/bank2.rel banks/bank3.rel banks/bank4.rel ^
engine/spriteengine.rel engine/soundengine.rel ^
object/montylib.rel object/gamelogic.rel object/resources.rel object/player.rel


:: Execute
ihx2sms output.ihx output.sms


:: Delete
if exist "*.asm" del "*.asm" > nul; if exist "*.ihx" del "*.ihx" > nul; if exist "*.lk"  del "*.lk"  > nul
if exist "*.lst" del "*.lst" > nul; if exist "*.sym" del "*.sym" > nul;
:: if exist "*.noi"  del "*.noi"  > nul

:: Run
::java -jar C:/SEGA/Emulicious/Emulicious.jar output.sms
output.sms
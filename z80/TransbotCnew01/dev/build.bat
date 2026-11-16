@echo off

:: Time build START
:: Reference: https://stackoverflow.com/questions/673523/how-do-i-measure-execution-time-of-a-command-on-the-windows-command-line
set _time=%time: =0%
set /a _hours=100%_time:~0,2%%%100,_min=100%_time:~3,2%%%100,_sec=100%_time:~6,2%%%100,_cs=%_time:~9,2%
set /a _started=_hours*60*60*100+_min*60*100+_sec*100+_cs

::echo Build
cd engine
sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 content_manager.c
if errorlevel 1 (echo Failed to compile content_manager.c & cd .. & exit /b 1)
sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 rle_manager.c
if errorlevel 1 (echo Failed to compile rle_manager.c & cd .. & exit /b 1)
cd ..

cd screen
sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 title_screen.c
if errorlevel 1 (echo Failed to compile title_screen.c & cd .. & exit /b 1)
cd ..

sdcc --debug -c -mz80 --opt-code-speed --peep-file peep-rules.txt --std-c99 game.c
if errorlevel 1 (echo Failed to compile game.c & exit /b 1)
sdcc --debug -c -mz80 --opt-code-speed --peep-file peep-rules.txt --std-c99 main.c
if errorlevel 1 (echo Failed to compile main.c & exit /b 1)


:: Time build -END-
set _time=%time: =0%
set /a _hours=100%_time:~0,2%%%100,_min=100%_time:~3,2%%%100,_sec=100%_time:~6,2%%%100,_cs=%_time:~9,2%
set /a _duration=_hours*60*60*100+_min*60*100+_sec*100+_cs-_started
set /a _hours=_duration/60/60/100,_min=100+_duration/60/100%%60,_sec=100+(_duration/100%%60%%60),_cs=100+_duration%%100
echo.
echo Time taken: %_sec:~-2%.%_cs:~-2% secs
echo.

::echo Link
sdcc --debug  -o output.ihx --Werror --opt-code-speed -mz80 --no-std-crt0 --data-loc 0xC000 ^
../crt0/crt0_sms.rel main.rel game.rel ^
../lib/SMSlib.lib ^
../lib/PSGlib.lib ^
engine/content_manager.rel ^
engine/rle_manager.rel ^
screen/title_screen.rel
if errorlevel 1 (echo Linking failed & exit /b 1)

::echo Run
ihx2sms output.ihx output.sms
if errorlevel 1 (echo ROM conversion failed & exit /b 1)

:: Cleanup
cd engine
if exist "*.lst" del "*.lst" > nul; if exist "*.sym" del "*.sym" > nul
cd ..
cd screen
if exist "*.lst" del "*.lst" > nul; if exist "*.sym" del "*.sym" > nul
cd ..

::if exist "*.asm" del "*.asm" > nul
if exist "*.ihx" del "*.ihx" > nul
if exist "*.lk"  del "*.lk"  > nul
if exist "*.lst" del "*.lst" > nul
if exist "*.noi" del "*.noi" > nul
if exist "*.sym" del "*.sym" > nul

java -jar C:/SEGA/Emulicious/Emulicious.jar output.sms
::output.sms
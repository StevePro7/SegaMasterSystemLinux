@echo off

:: Time build START
:: Reference: https://stackoverflow.com/questions/673523/how-do-i-measure-execution-time-of-a-command-on-the-windows-command-line
set _time=%time: =0%
set /a _hours=100%_time:~0,2%%%100,_min=100%_time:~3,2%%%100,_sec=100%_time:~6,2%%%100,_cs=%_time:~9,2%
set /a _started=_hours*60*60*100+_min*60*100+_sec*100+_cs


sdcc --debug -c -mz80 --opt-code-speed --peep-file peep-rules.txt --std-c99 data.c
sdcc --debug -c -mz80 --opt-code-speed --peep-file peep-rules.txt --std-c99 data_bank2.c
sdcc --debug -c -mz80 --opt-code-speed --peep-file peep-rules.txt --std-c99 data_bank3.c
sdcc --debug -c -mz80 --opt-code-speed --peep-file peep-rules.txt --std-c99 flash.c
sdcc --debug -c -mz80 --opt-code-speed --peep-file peep-rules.txt --std-c99 inlib.c
sdcc --debug -c -mz80 --opt-code-speed --peep-file peep-rules.txt --std-c99 knob.c
sdcc --debug -c -mz80 --opt-code-speed --peep-file peep-rules.txt --std-c99 savedata.c
sdcc --debug -c -mz80 --opt-code-speed --peep-file peep-rules.txt --std-c99 savestruct.c
sdcc --debug -c -mz80 --opt-code-speed --peep-file peep-rules.txt --std-c99 sinlut.c
sdcc --debug -c -mz80 --opt-code-speed --peep-file peep-rules.txt --std-c99 util.c
sdcc --debug -c -mz80 --opt-code-speed --peep-file peep-rules.txt --std-c99 vfont.c

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
data.rel ^
data_bank2.rel ^
data_bank3.rel ^
flash.rel ^
inlib.rel ^
knob.rel ^
main.rel ^
savedata.rel ^
savestruct.rel ^
sinlut.rel ^
util.rel ^
vfont.rel


:: Execute
ihx2sms output.ihx output.sms

:: Delete
if exist "*.asm" del "*.asm" > nul
if exist "*.ihx" del "*.ihx" > nul
if exist "*.lk"  del "*.lk"  > nul
if exist "*.lst" del "*.lst" > nul
if exist "*.noi" del "*.noi" > nul
if exist "*.sym" del "*.sym" > nul

:: Run
::java -jar C:/SEGA/Emulicious/Emulicious.jar output.sms
output.sms
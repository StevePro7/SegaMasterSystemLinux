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


cd devkit
::"C:\Program Files\SDCC\bin\sdcc" -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 _sms_manager.c
::"C:\Program Files\SDCC\bin\sdcc" -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 _snd_manager.c
cd ..

cd engine
::"C:\Program Files\SDCC\bin\sdcc" -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 asm_manager.c
::"C:\Program Files\SDCC\bin\sdcc" -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 content_manager.c
::::"C:\Program Files\SDCC\bin\sdcc" -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 enum_manager.c
::"C:\Program Files\SDCC\bin\sdcc" -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 font_manager.c
::::"C:\Program Files\SDCC\bin\sdcc" -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 global_manager.c
::"C:\Program Files\SDCC\bin\sdcc" -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 input_manager.c
::"C:\Program Files\SDCC\bin\sdcc" -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 riff_manager.c
::"C:\Program Files\SDCC\bin\sdcc" -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 sample_manager.c
::"C:\Program Files\SDCC\bin\sdcc" -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 screen_manager.c
cd ..

cd object
"C:\Program Files\SDCC\bin\sdcc" -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 riff_object.c
cd ..

cd screen
::"C:\Program Files\SDCC\bin\sdcc" -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 none_screen.c
"C:\Program Files\SDCC\bin\sdcc" -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 test_screen.c
cd ..


REM echo Build main
"C:\Program Files\SDCC\bin\sdcc" -c -mz80 --opt-code-speed --peep-file peep-rules.txt --std-c99 main.c


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


REM echo Linking
"C:\Program Files\SDCC\bin\sdcc" --debug -o output.ihx --Werror --opt-code-speed -mz80 --no-std-crt0 --data-loc 0xC000 ^
-Wl-b_BANK2=0x8000  -Wl-b_BANK3=0x8000  -Wl-b_BANK4=0x8000  -Wl-b_BANK5=0x8000 ^
-Wl-b_BANK6=0x8000  -Wl-b_BANK7=0x8000  -Wl-b_BANK8=0x8000  -Wl-b_BANK9=0x8000 ^
-Wl-b_BANK10=0x8000 -Wl-b_BANK11=0x8000 -Wl-b_BANK12=0x8000 -Wl-b_BANK13=0x8000 ^
-Wl-b_BANK14=0x8000 -Wl-b_BANK15=0x8000 ^
-Wl-b_BANK10=0x8000 ^
../crt0/crt0_sms.rel main.rel ^
../lib/SMSlib.lib ^
../lib/PSGlib.rel ^
banks/bank2.rel  banks/bank3.rel  banks/bank4.rel  banks/bank5.rel ^
banks/bank6.rel  banks/bank7.rel  banks/bank8.rel  banks/bank9.rel ^
banks/bank10.rel banks/bank11.rel banks/bank12.rel banks/bank13.rel ^
banks/bank14.rel banks/bank15.rel ^
devkit/_sms_manager.rel ^
devkit/_snd_manager.rel ^
engine/asm_manager.rel ^
engine/content_manager.rel ^
engine/enum_manager.rel ^
engine/font_manager.rel ^
engine/input_manager.rel ^
engine/riff_manager.rel ^
engine/sample_manager.rel ^
engine/screen_manager.rel ^
object/riff_object.rel ^
screen/none_screen.rel ^
screen/test_screen.rel ^
content/gfx.rel

REM echo Binary output
"C:\Program Files\SDCC\bin\ihx2sms" output.ihx output.sms

:: Copy
copy output.sms ..\TestBuild.sms


REM https://www.askingbox.com/question/batch-script-delete-file-if-it-exists
cd devkit
if exist "*.asm" del "*.asm" > nul; if exist "*.lst" del "*.lst" > nul; if exist "*.sym" del "*.sym" > nul
cd ..

cd engine
if exist "*.asm" del "*.asm" > nul; if exist "*.lst" del "*.lst" > nul; if exist "*.sym" del "*.sym" > nul
cd ..

cd object
if exist "*.asm" del "*.asm" > nul; if exist "*.lst" del "*.lst" > nul; if exist "*.sym" del "*.sym" > nul
cd ..

cd screen
if exist "*.asm" del "*.asm" > nul; if exist "*.lst" del "*.lst" > nul; if exist "*.sym" del "*.sym" > nul
cd ..

if exist "*.asm" del "*.asm" > nul;
if exist "*.ihx" del "*.ihx" > nul;
if exist "*.lk"  del "*.lk"  > nul
if exist "*.lst" del "*.lst" > nul;
::if exist "*.noi" del "*.noi" > nul;
if exist "*.sym" del "*.sym" > nul
::if exist "*.map" del "*.map" > nul
::if exist "*.rel" del "*.rel" > nul


::java -jar C:/SEGA/Emulicious/emulicious.jar output.sms
output.sms
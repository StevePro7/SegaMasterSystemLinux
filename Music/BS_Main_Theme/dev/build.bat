@echo off

REM https://stackoverflow.com/questions/673523/how-do-i-measure-execution-time-of-a-command-on-the-windows-command-line
:: Calculate the start timestamp
set _time=%time: =0%
set /a _hours=100%_time:~0,2%%%100,_min=100%_time:~3,2%%%100,_sec=100%_time:~6,2%%%100,_cs=%_time:~9,2%
set /a _started=_hours*60*60*100+_min*60*100+_sec*100+_cs

REM vgm2psg bs_main_theme.vgm bs_main_theme.psg 23
REM vgm2psg bs_highscore_tune.vgm bs_highscore_tune2.psg 123

REM build.bat assumes the following scripts been re-run and REL files cached:
REM bank*.bat
REM gfx.bat
REM psg.bat

cd devkit
::sdcc -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 _sms_manager.c
::sdcc -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 _snd_manager.c
cd  ..

cd engine
::sdcc -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 asm_manager.c
::sdcc -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 audio_manager.c
::sdcc -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 content_manager.c
::sdcc -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 font_manager.c
::sdcc -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 input_manager.c
cd ..

cd object
::sdcc -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 audio_object.c
cd ..

REM echo Build main
sdcc -c -mz80 --opt-code-speed --peep-file peep-rules.txt --std-c99 main.c


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
sdcc -o output.ihx --Werror --opt-code-speed -mz80 --no-std-crt0 --data-loc 0xC000 ^
-Wl-b_BANK2=0x8000 ^
-Wl-b_BANK3=0x8000 ^
../crt0/crt0_sms.rel main.rel ^
../lib/SMSlib.lib ^
../lib/PSGlib.rel ^
banks/bank2.rel ^
banks/bank3.rel ^
devkit/_sms_manager.rel ^
devkit/_snd_manager.rel ^
engine/asm_manager.rel ^
engine/audio_manager.rel ^
engine/content_manager.rel ^
engine/font_manager.rel ^
engine/input_manager.rel ^
object/audio_object.rel ^
gfx.rel

REM echo Binary output
ihx2sms output.ihx output.sms


REM https://www.askingbox.com/question/batch-script-delete-file-if-it-exists
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

if exist "*.asm" del "*.asm" > nul
if exist "*.ihx" del "*.ihx" > nul
if exist "*.lk"  del "*.lk"  > nul
if exist "*.lst" del "*.lst" > nul
REM if exist "*.map" del "*.map" > nul
if exist "*.noi" del "*.noi" > nul
REM if exist "*.rel" del "*.rel" > nul
if exist "*.sym" del "*.sym" > nul


"C:/SEGA/Fusion/fusion.exe" output.sms
::java -jar C:/SEGA/Emulicious/emulicious.jar output.sms
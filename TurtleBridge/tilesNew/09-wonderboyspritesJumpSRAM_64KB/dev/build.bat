@echo off

:: Time build START
:: Reference: https://stackoverflow.com/questions/673523/how-do-i-measure-execution-time-of-a-command-on-the-windows-command-line
set _time=%time: =0%
set /a _hours=100%_time:~0,2%%%100,_min=100%_time:~3,2%%%100,_sec=100%_time:~6,2%%%100,_cs=%_time:~9,2%
set /a _started=_hours*60*60*100+_min*60*100+_sec*100+_cs


:: Compile
:: Compile
cd banks
:"C:\Program Files\SDCC\bin\sdcc.exe" --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 fixedbank.c
cd ..

cd content
::"C:\Program Files\SDCC\bin\sdcc.exe" --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 gfx.c
::"C:\Program Files\SDCC\bin\sdcc.exe" --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 psg.c
cd ..

cd devkit
::"C:\Program Files\SDCC\bin\sdcc.exe" --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 _sms_manager.c
::"C:\Program Files\SDCC\bin\sdcc.exe" --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 _snd_manager.c
cd ..

cd engine
::"C:\Program Files\SDCC\bin\sdcc.exe" --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 asm_manager.c
::"C:\Program Files\SDCC\bin\sdcc.exe" --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 audio_manager.c
::"C:\Program Files\SDCC\bin\sdcc.exe" --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 content_manager.c
::"C:\Program Files\SDCC\bin\sdcc.exe" --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 enum_manager.c
::"C:\Program Files\SDCC\bin\sdcc.exe" --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 font_manager.c
::"C:\Program Files\SDCC\bin\sdcc.exe" --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 function_manager.c
::"C:\Program Files\SDCC\bin\sdcc.exe" --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 global_manager.c
::"C:\Program Files\SDCC\bin\sdcc.exe" --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 input_manager.c
"C:\Program Files\SDCC\bin\sdcc.exe" --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 jump_manager.c
"C:\Program Files\SDCC\bin\sdcc.exe" --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 screen_manager.c
::"C:\Program Files\SDCC\bin\sdcc.exe" --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 sprite_manager.c
"C:\Program Files\SDCC\bin\sdcc.exe" --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 storage_manager.c
::"C:\Program Files\SDCC\bin\sdcc.exe" --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 tile_manager.c
cd ..

cd object
::"C:\Program Files\SDCC\bin\sdcc.exe" --debug -c -mz80 --opt-code-size --peep-file ..\peep-rules.txt --std-c99 jump_object.c
::"C:\Program Files\SDCC\bin\sdcc.exe" --debug -c -mz80 --opt-code-size --peep-file ..\peep-rules.txt --std-c99 storage_object.c
::"C:\Program Files\SDCC\bin\sdcc.exe" --debug -c -mz80 --opt-code-size --peep-file ..\peep-rules.txt --std-c99 tile_object.c
cd ..

"C:\Program Files\SDCC\bin\sdcc.exe" --debug -c -mz80 --opt-code-speed --peep-file peep-rules.txt --std-c99 main.c


:: Time build -END-
set _time=%time: =0%
set /a _hours=100%_time:~0,2%%%100,_min=100%_time:~3,2%%%100,_sec=100%_time:~6,2%%%100,_cs=%_time:~9,2%
set /a _duration=_hours*60*60*100+_min*60*100+_sec*100+_cs-_started
set /a _hours=_duration/60/60/100,_min=100+_duration/60/100%%60,_sec=100+(_duration/100%%60%%60),_cs=100+_duration%%100
echo.
echo Time taken: %_sec:~-2%.%_cs:~-2% secs
echo.


:: Link
"C:\Program Files\SDCC\bin\sdcc.exe" --debug -o output.ihx --Werror --opt-code-speed -mz80 --no-std-crt0 --data-loc 0xC000 ^
../crt0/crt0_sms.rel main.rel ^
-Wl-b_BANK2=0x8000  -Wl-b_BANK3=0x8000 ^
../lib/SMSlib.lib ^
../lib/PSGlib.rel ^
banks/bank2.rel  banks/bank3.rel ^
banks/fixedbank.rel ^
devkit/_sms_manager.rel ^
devkit/_snd_manager.rel ^
engine/asm_manager.rel ^
engine/audio_manager.rel ^
engine/content_manager.rel ^
engine/enum_manager.rel engine/font_manager.rel ^
engine/function_manager.rel engine/global_manager.rel ^
engine/input_manager.rel ^
engine/jump_manager.rel ^
engine/screen_manager.rel ^
engine/sprite_manager.rel ^
engine/storage_manager.rel ^
engine/tile_manager.rel ^
object/jump_object.rel ^
object/storage_object.rel ^
object/tile_object.rel ^
content/gfx.rel ^
content/psg.rel


:: Execute
"C:\Program Files\SDCC\bin\ihx2sms.exe" output.ihx output.sms

:: Delete
cd banks
if exist "*.asm" del "*.asm" > nul; if exist "*.lst" del "*.lst" > nul; if exist "*.sym" del "*.sym" > nul
cd ..

cd content
if exist "*.asm" del "*.asm" > nul; if exist "*.lst" del "*.lst" > nul; if exist "*.sym" del "*.sym" > nul
cd ..

cd devkit
if exist "*.asm" del "*.asm" > nul; if exist "*.lst" del "*.lst" > nul; if exist "*.sym" del "*.sym" > nul
cd ..

cd engine
if exist "*.asm" del "*.asm" > nul; if exist "*.lst" del "*.lst" > nul; if exist "*.sym" del "*.sym" > nul
cd ..

cd object
if exist "*.asm" del "*.asm" > nul; if exist "*.lst" del "*.lst" > nul; if exist "*.sym" del "*.sym" > nul
cd ..

if exist "*.asm" del "*.asm" > nul
if exist "*.ihx" del "*.ihx" > nul
if exist "*.lk"  del "*.lk"  > nul
if exist "*.lst" del "*.lst" > nul
::if exist "*.noi" del "*.noi" > nul
if exist "*.sym" del "*.sym" > nul

:: Run
::java -jar C:/SEGA/Emulicious/Emulicious.jar output.sms
C:/SEGA/Fusion/Fusion.exe output.sms
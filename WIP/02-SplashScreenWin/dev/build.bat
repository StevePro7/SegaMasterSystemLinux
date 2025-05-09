@echo off

:: Content
::folder2c ..\gfx gfx
::sdcc --debug -c -mz80 --opt-code-speed --peep-file peep-rules.txt --std-c99 gfx.c

:: Compile
cd devkit
sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 _sms_manager.c
cd ..

cd engine
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 asm_manager.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 content_manager.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 input_manager.c
cd ..

sdcc --debug -c -mz80 --opt-code-speed --peep-file peep-rules.txt --std-c99 main.c

:: Link
sdcc --debug -o output.ihx --Werror --opt-code-speed -mz80 --no-std-crt0 --data-loc 0xC000 ^
..\crt0\crt0_sms.rel main.rel ^
..\lib\SMSlib.lib ^
devkit\_sms_manager.rel ^
engine\asm_manager.rel ^
engine\content_manager.rel ^
engine\input_manager.rel ^
gfx.rel

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

if exist "*.asm" del "*.asm" > nul
if exist "*.ihx" del "*.ihx" > nul
if exist "*.lk"  del "*.lk"  > nul
if exist "*.lst" del "*.lst" > nul
if exist "*.noi" del "*.noi" > nul
if exist "*.sym" del "*.sym" > nul

:: Run
java -jar C:\SEGA\Emulicious\Emulicious.jar output.sms
::output.sms
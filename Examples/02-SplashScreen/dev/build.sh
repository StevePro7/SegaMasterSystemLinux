echo Build

cd engine
sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 asm_manager.c
sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 content_manager.c
cd ..

sdcc --debug -c -mz80 --opt-code-speed --peep-file peep-rules.txt --std-c99 main.c

echo Link
sdcc --debug -o output.ihx --Werror --opt-code-speed -mz80 --no-std-crt0 --data-loc 0xC000 \
../crt0/crt0_sms.rel main.rel \
../lib/SMSlib.lib \
engine/asm_manager.rel \
engine/content_manager.rel \
gfx.rel

echo Execute
ihx2sms output.ihx output.sms


cd engine
if exist "*.asm" del "*.asm" > nul
if exist "*.ihx" del "*.ihx" > nul
if exist "*.lk"  del "*.lk"  > nul
if exist "*.lst" del "*.lst" > nul
if exist "*.noi" del "*.noi" > nul
if exist "*.sym" del "*.sym" > nul

cd ..

if exist "*.asm" del "*.asm" > nul
if exist "*.ihx" del "*.ihx" > nul
if exist "*.lk"  del "*.lk"  > nul
if exist "*.lst" del "*.lst" > nul
if exist "*.noi" del "*.noi" > nul
if exist "*.sym" del "*.sym" > nul


#java -jar ~/Sega/Emulicious/Emulicious.jar output.sms
output.sms
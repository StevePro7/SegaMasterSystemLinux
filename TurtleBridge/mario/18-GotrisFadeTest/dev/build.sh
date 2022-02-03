#@echo off

# Content
#folder2c ../gfx gfx
#sdcc -c -mz80 --opt-code-speed --peep-file peep-rules.txt --std-c99 gfx.c

# Compile
cd devkit
sdcc -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 _sms_manager.c
cd ..

cd engine
sdcc -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 asm_manager.c
sdcc -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 content_manager.c
cd ..

sdcc -c -mz80 --opt-code-speed --peep-file peep-rules.txt --std-c99 main.c

# Link
sdcc -o output.ihx --Werror --opt-code-speed -mz80 --no-std-crt0 --data-loc 0xC000 \
../crt0/crt0_sms.rel main.rel \
../lib/SMSlib.lib \
devkit/_sms_manager.rel \
engine/asm_manager.rel \
engine/content_manager.rel \
gfx.rel

# Execute
ihx2sms output.ihx output.sms

cd devkit
rm -f *.asm 2> /dev/null
rm -f *.lst 2> /dev/null
rm -f *.sym 2> /dev/null
cd ..

cd engine
rm -f *.asm 2> /dev/null
rm -f *.lst 2> /dev/null
rm -f *.sym 2> /dev/null
cd ..

rm -f *.asm 2> /dev/null
rm -f *.ihx 2> /dev/null
rm -f *.lk  2> /dev/null
rm -f *.lst 2> /dev/null
rm -f *.noi 2> /dev/null
rm -f *.sym 2> /dev/null

# Run
#java -jar ~/Sega/Emulicious/Emulicious.jar output.sms
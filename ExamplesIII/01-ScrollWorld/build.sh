#!/bin/bash
echo Build
sdcc --debug -c -mz80 --opt-code-speed --peep-file peep-rules.txt --std-c99 main.c

echo Link
sdcc --debug -o output.ihx --Werror --opt-code-speed -mz80 --no-std-crt0 --data-loc 0xC000 crt0_sms.rel main.rel SMSlib.lib

echo Run
ihx2sms output.ihx output.sms
#makesms output.ihx output.sms

#Cleanup
rm -f -- *.asm
rm -f -- *.ihx
rm -f -- *.lk
rm -f -- *.lst
rm -f -- *.noi
rm -f -- *.sym

java -jar ~/Sega/Emulicious/Emulicious.jar output.sms
#output.sms
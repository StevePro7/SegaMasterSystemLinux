# Old
sdcc -c -mz80 main.c
sdcc -o output.ihx -mz80 --data-loc 0xC000 --no-std-crt0 crt0_sms.rel main.rel SMSlib.lib
ihx2sms output.ihx output.sms


# New
sdcc -c -mz80 --codeseg BANK1 banked_code_1.c
sdcc -c -mz80 --codeseg BANK2 banked_code_2.c
sdcc -c -mz80 main.c

sdcc -o output.ihx -mz80 --no-std-crt0 --data-loc 0xC000 -Wl-b_BANK1=0x14000 -Wl-b_BANK2=0x24000 crt0b_sms.rel SMSlib.lib main.rel banked_code_1.rel banked_code_2.rel



sdcc -c -mz80 --codeseg BANK1 banked_code_1.c
sdcc -c -mz80 --codeseg BANK2 banked_code_2.c
sdcc -c -mz80 main.c


sdcc -o output.ihx --Werror --opt-code-speed -mz80 --no-std-crt0 --data-loc 0xC000 ^
-Wl-b_BANK1=0x14000 ^ 
-Wl-b_BANK2=0x24000 ^
../crt0/crt0_sms.rel main.rel ^
../lib/SMSlib.lib ^
banked_code_1.rel ^
banked_code_2.rel



03.
sdcc -c -mz80 --peep-file peep-rules.txt your_program.c
sdcc -o output.ihx -mz80 --no-std-crt0 --data-loc 0xC000 crt0_sms.rel main.rel SMSlib.lib


04.
sdcc -c -mz80 your_program.c
sdcc -o output.ihx -mz80 --no-std-crt0 --data-loc 0xC000 crt0_sg.rel main.rel SGlib.rel


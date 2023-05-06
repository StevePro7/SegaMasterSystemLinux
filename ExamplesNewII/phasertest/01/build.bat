sdcc -c -mz80 main.c
sdcc -o output.ihx -mz80 --data-loc 0xC000 --no-std-crt0 crt0_sms.rel main.rel SMSlib.lib
ihx2sms output.ihx output.sms
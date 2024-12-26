sdcc -c -mz80 main.c 
sdcc -o output.ihx -mz80 --no-std-crt0 --data-loc 0xC000 -Wl-b_BANK2=0x4000 -Wl-b_BANK3=0x4000 libs\crt0_sms.rel main.rel SMSlib.lib bank2.rel bank3.rel
ihx2sms output.ihx GSLib_Demo.sms 
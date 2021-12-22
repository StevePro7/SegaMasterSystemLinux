readme
22/12/2021


what I did here!


replicate banks example which will only work with SDCC 4.1.0
E:\GitHub\StevePro7\SegaMasterSystemLinux\NewBanking\04-Banks


BUT
I used the latest SMSlib stuff that worked for me i.e.
E:\GitHub\SteveProXNA\VanHalenDemoSMS

crt0
dev/devkit
lib
tmp


to try and get the best of both worlds and hopefully I think this will work...??


the banks example works on 4.1.0 for this
just need to retro fit the devkitSMS libs


Only problem
?ASlink-Warning-Undefined Global '_SMS_Port3EBIOSvalue' referenced by module 'crt0'
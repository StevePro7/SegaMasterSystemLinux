REM bank46
@echo off

cd ..
cd banks
cd bank46
cd raw

"C:/Program Files/SDCC/bin/pcmenc" -rto 1 -dt1 12 -dt2 12 -dt3 423 Riff__Title__Screen__06.wav
mv Riff__Title__Screen__06.wav.pcmenc ../

cd ../..
"C:/Program Files/SDCC/bin/folder2c" bank46 bank46 46

"C:/Program Files/SDCC/bin/sdcc" --debug -c --no-std-crt0 -mz80 --Werror --opt-code-speed --constseg BANK46 bank46.c

del *.asm > nul; del *.lst > nul; del *.sym > nul

cd ..
cd scripts

REM bank56
@echo off

cd ..
cd banks
cd bank56
cd raw

"C:/Program Files/SDCC/bin/pcmenc" -rto 1 -dt1 12 -dt2 12 -dt3 423 Riff__Splash__Screen__06.wav
mv Riff__Splash__Screen__06.wav.pcmenc ../

cd ../..
"C:/Program Files/SDCC/bin/folder2c" bank56 bank56 56

"C:/Program Files/SDCC/bin/sdcc" --debug -c --no-std-crt0 -mz80 --Werror --opt-code-speed --constseg BANK56 bank56.c

del *.asm > nul; del *.lst > nul; del *.sym > nul

cd ..
cd scripts

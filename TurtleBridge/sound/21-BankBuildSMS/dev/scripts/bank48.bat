REM bank48
@echo off

cd ..
cd banks
cd bank48
cd raw

"C:/Program Files/SDCC/bin/pcmenc" -rto 1 -dt1 12 -dt2 12 -dt3 423 Riff__Title__Screen__08.wav
mv Riff__Title__Screen__08.wav.pcmenc ../

cd ../..
"C:/Program Files/SDCC/bin/folder2c" bank48 bank48 48

"C:/Program Files/SDCC/bin/sdcc" --debug -c --no-std-crt0 -mz80 --Werror --opt-code-speed --constseg BANK48 bank48.c

del *.asm > nul; del *.lst > nul; del *.sym > nul

cd ..
cd scripts
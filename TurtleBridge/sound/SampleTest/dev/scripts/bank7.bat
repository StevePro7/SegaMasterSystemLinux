echo start
:: Setup.
cd ..
cd banks
cd bank7
cd raw

pcmenc -rto 1 -dt1 12 -dt2 12 -dt3 423 SoundFx07.wav
mv SoundFx07.wav.pcmenc ../

:: Convert.
cd ../..
folder2c bank7 bank7 7

:: Compile
sdcc --debug -c --no-std-crt0 -mz80 --Werror --opt-code-speed --constseg BANK7 bank7.c

:: Cleanup
if exist "*.asm" del "*.asm" > nul; 
if exist "*.lst" del "*.lst" > nul; 
if exist "*.sym" del "*.sym" > nul;

cd ../scripts
echo -end-
echo start
:: Setup.
cd ..
cd banks
cd bank12
cd raw

pcmenc -rto 1 -dt1 12 -dt2 12 -dt3 423 Riff__01.wav
mv Riff__01.wav.pcmenc ../

:: Convert.
cd ../..
folder2c bank12 bank12 12

:: Compile
sdcc --debug -c --no-std-crt0 -mz80 --Werror --opt-code-speed --constseg BANK12 bank12.c

:: Cleanup
if exist "*.asm" del "*.asm" > nul; 
if exist "*.lst" del "*.lst" > nul; 
if exist "*.sym" del "*.sym" > nul;

cd ../scripts
echo -end-
echo start
:: Setup.
cd ..
cd banks
cd bank3
cd raw

"C:\Program Files\SDCC\bin\pcmenc" -rto 1 -dt1 12 -dt2 12 -dt3 423 Riff__02.wav
mv Riff__02.wav.pcmenc ../

:: Convert.
cd ../..
"C:\Program Files\SDCC\bin\folder2c" bank3 bank3 3

:: Compile
"C:\Program Files\SDCC\bin\sdcc" --debug -c --no-std-crt0 -mz80 --Werror --opt-code-speed --constseg BANK3 bank3.c

:: Cleanup
if exist "*.asm" del "*.asm" > nul; 
if exist "*.lst" del "*.lst" > nul; 
if exist "*.sym" del "*.sym" > nul;

cd ../scripts
echo -end-
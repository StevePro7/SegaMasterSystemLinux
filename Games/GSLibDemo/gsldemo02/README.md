README.md
26-Dec-2024

Reference:
https://github.com/sverx/GSLib/tree/main/c/example

content
build this first using the destination build.bat file

assets
clone 3x times at the top folder level
assets
assets2
assets3

cd content
run all the commands from assets_build.bat

folder2c assets assets 
folder2c assets2 assets2 2
folder2c assets3 assets3 3
sdcc -c -mz80 assets.c 
sdcc -c -mz80 --constseg BANK2 assets2.c 
sdcc -c -mz80 --constseg BANK3 assets3.c 
assets2banks assets --compile


this produces
bank2.h
bank3.h
bank2.rel
bank3.rel

cd dev
copy all the files to match the layout from the reference

build.bat
produces GSL_Demo.sms
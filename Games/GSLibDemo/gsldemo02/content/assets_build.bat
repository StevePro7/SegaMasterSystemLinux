folder2c assets assets 
folder2c assets2 assets2 2
folder2c assets3 assets3 3
sdcc -c -mz80 assets.c 
sdcc -c -mz80 --constseg BANK2 assets2.c 
sdcc -c -mz80 --constseg BANK3 assets3.c 
assets2banks assets --compile
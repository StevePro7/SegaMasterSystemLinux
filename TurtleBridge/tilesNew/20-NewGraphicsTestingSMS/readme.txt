readme
22-Dec-2022


180

72 x 80
 9 x 10

9 x 10 = 90
90 * 2 = 180


so is the formula this:

get the dimensions of the graphics before
tx = divide wide / 8
ty = divide high / 8
area = multiply tx * ty
area *= 2 		tilemaps!!

that is the base index for the next graphic??



will this work if I "reverse"
can I use this technique for the other scroll type?




flip
engine_tile_manager_draw_flip
E:\GitHub\StevePro8\SegaMasterSystemLinux\TurtleBridge\tilesNew\12-wonderboyspritesLatestZoom\dev\engine


current
devkit_SMS_setNextTileatXY( x + spc, y + row );
devkit_SMS_setTile( ( *tiles + val ) | flip );


alternative
devkit_SMS_loadTileMap

http://steveproxna.blogspot.com/2022/07/devkitsms-programming-sample-v.html
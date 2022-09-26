ini_open("save.ini");

oPlayer.x = ini_read_real("player", "xPos", 1888);
oPlayer.y = ini_read_real("player", "yPos", 288);
oPlayer.hp = ini_read_real("player", "health", 30);
oPlayer.maxHP = ini_read_real("player", "maxHP", 99);

oPlayer.blasterLevel = ini_read_real("player.items", "blasterLevel", 0);

room_goto(asset_get_index(ini_read_string("world", "map", "map1")));

ini_close();
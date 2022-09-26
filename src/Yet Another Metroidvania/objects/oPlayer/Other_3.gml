ini_open("save.ini");

ini_write_real("player", "xPos",   oPlayer.x    );
ini_write_real("player", "yPos",   oPlayer.y    );
ini_write_real("player", "health", oPlayer.hp   );
ini_write_real("player", "maxHP",  oPlayer.maxHP);

ini_write_real("player.items", "blasterLevel", oPlayer.blasterLevel);


ini_write_string("world", "map", room);


ini_close();
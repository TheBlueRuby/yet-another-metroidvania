//Save Data
ini_open("yam-save.ini");

ini_write_real("player", "xPos",   x    );
ini_write_real("player", "yPos",   y    );
ini_write_real("player", "health", hp   );
ini_write_real("player", "maxHP",  maxHP);

ini_write_real("player.items", "blasterLevel", blasterLevel);
ini_write_real("player.items", "maxBlasterLevel", maxBlasterLevel);



ini_close();
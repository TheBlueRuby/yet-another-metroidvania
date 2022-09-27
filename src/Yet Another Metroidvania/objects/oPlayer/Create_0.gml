//Movement & Collision
xSpeed = 0;
ySpeed = 0;

collisionMap = layer_tilemap_get_id("CollisionMask");

//Load New Room
ini_open("yam-save.ini");

x		= ini_read_real("player", "xPos"  , 1888);
y		= ini_read_real("player", "yPos"  , 288 );
hp		= ini_read_real("player", "health", 30	);
maxHP	= ini_read_real("player", "maxHP" , 99	);

blasterLevel = ini_read_real("player.items", "blasterLevel", 0);
maxBlasterLevel = ini_read_real("player.items", "maxBlasterLevel", 5);

ini_write_string("world", "map", room_get_name(room));

ini_close();

//Audio
audio_group_load(music);
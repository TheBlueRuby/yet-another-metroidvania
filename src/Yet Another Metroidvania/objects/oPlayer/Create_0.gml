//Movement & Collision
xSpeed = 0;
ySpeed = 0;

collisionMap = layer_tilemap_get_id("CollisionMask");

//Health
hp = 30;
maxHP = 99;

//Items
blasterLevel = 0;

//Audio
audio_group_load(music);
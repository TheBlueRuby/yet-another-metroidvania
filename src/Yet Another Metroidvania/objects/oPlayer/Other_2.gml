ini_open("yam-save.ini");

room_goto(asset_get_index(ini_read_string("world", "map", "map1")));

ini_close();
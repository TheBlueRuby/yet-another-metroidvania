// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function startGame(){
	ini_open("yam-save.ini");

	room_goto(asset_get_index(ini_read_string("world", "map", "map1")));

	ini_close();
}
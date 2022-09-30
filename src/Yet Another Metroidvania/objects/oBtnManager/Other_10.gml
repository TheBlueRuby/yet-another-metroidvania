/// @description Show UI
var _width = 360;
var _height = 120;
var xAlign = 640;
var yOffset = 40;

var playBtnText = "Play";

if (room_get_name(room) != "titleScreen") {
	playBtnText = "Resume";
	audio_pause_all();
}

create_button(xAlign, (yOffset + _height) * 1, _width, _height, playBtnText, startGame);
//create_button(xAlign, (yOffset + _height) * 2, _width, _height, "Settings", button_onclick);
create_button(xAlign, (yOffset + _height) * 3, _width, _height, "Quit"	   , quitGame);


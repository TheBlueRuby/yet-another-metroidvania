// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_button(xPos, yPos, lwidth, lheight, ltext, lscript){
	var button = instance_create_layer(xPos, yPos, "GUI", oButton);
	
	with(button) {
		width = lwidth;
		height = lheight;
		text = ltext;
		script = lscript
	}
	
	return button;
}
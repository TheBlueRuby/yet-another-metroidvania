var _hover = get_hover(x, y);
var _click = _hover && mouse_check_button_pressed(mb_left);

hover = lerp(hover, _hover, 0.1);

if(_click && script >= 0) {
	script_execute(script);
}
//button
draw_set_color(merge_color(c_teal, c_lime, hover));
draw_roundrect(x-width/2, y-height/2, x+width/2, y+height/2, 0);

//button text
draw_set_font(MZM);
draw_set_color(merge_color(c_blue, c_black, hover));
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x, y, text);

//reset
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
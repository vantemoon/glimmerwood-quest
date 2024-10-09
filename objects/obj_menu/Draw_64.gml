/// @description Draw menu

draw_set_font(fnt_menu);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

for (var _index = 0; _index < menu_items; _index ++)
{
	var _colour = c_white;
	var _offset = 2;
	var _text = menu[_index];
	
	if (menu_cursor == _index)
	{
		_text = string_insert("> ", _text, 0);
		_colour = c_white;
	}
	else
	{
		_colour = c_gray;
	}
	var _xx = menu_x;
	var _yy = menu_y - (menu_item_height * _index * 1.8);
	
	draw_set_color(c_dkgray);
	draw_text(_xx - _offset, _yy, _text);
	draw_text(_xx + _offset, _yy, _text);
	draw_text(_xx, _yy + _offset, _text);
	draw_text(_xx, _yy - _offset, _text);
	
	draw_set_color(_colour);
	draw_text(_xx, _yy, _text);
}

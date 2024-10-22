///// @description animation_end(_sprite_index, _image_index, _rate)
///// @param {real} <_sprite_index> The index of the sprite being animated
///// @param {real} <_image_index> The current frame value
///// @param {real} <_rate> -See Below-
/////     The rate of change in frames per step if not
/////     using built in image_index/image_speed.  
/////     Don't use if you don't think you need this.  You probably don't.
 
////returns true if the animation will loop this step.
 
////Script courtesy of PixellatedPope & Minty Python from the GameMaker subreddit discord 
////https://www.reddit.com/r/gamemaker/wiki/discord

//function animation_end(_sprite_index, _image_index, _rate)
//{
//	var _sprite = sprite_index;
//	var _image = image_index;
//	if (argument_count > 0) _sprite = argument[0];
//	if (argument_count > 1) _image = argument[1];
	
//	var _type = sprite_get_speed_type(sprite_index);
//	var _spd = sprite_get_speed(sprite_index) * image_speed;
	
//	if (_type == spritespeed_framespersecond)
//	    _spd = _spd/(game_get_speed(gamespeed_fps));
//	if (argument_count > 2) _spd = argument[2];
	
//	return (_image + _spd) >= sprite_get_number(_sprite);
//}

/// @description animation_end(_sprite_index, _image_index, _rate)
/// @param {real} <_sprite_index> The index of the sprite being animated
/// @param {real} <_image_index> The current frame value
/// @param {real} <_rate> -See Below-
///     The rate of change in frames per step if not
///     using built in image_index/image_speed.  
///     Don't use if you don't think you need this.  You probably don't.
 
function animation_end(_sprite_index, _image_index, _rate)
{
    var _sprite = sprite_index;
    var _image = image_index;

    // Use arguments if provided
    if (argument_count > 0) _sprite = argument[0];
    if (argument_count > 1) _image = argument[1];
    
    // Ensure _sprite is valid
    if (!sprite_exists(_sprite)) {
        show_debug_message("Error: Invalid sprite index.");
        return false; // Return false on invalid sprite
    }

    // Determine the speed type of the sprite
    var _type = sprite_get_speed_type(_sprite);
    var _spd = sprite_get_speed(_sprite) * image_speed;

    // If speed type is frames per second, adjust _spd accordingly
    if (_type == spritespeed_framespersecond) {
        _spd = _spd / game_get_speed(gamespeed_fps);
    }

    // Override _spd if the third argument is provided
    if (argument_count > 2) _spd = argument[2];

    // Ensure _image and _spd are defined properly
    if (!is_real(_image) || !is_real(_spd)) {
        show_debug_message("Error: Invalid image index or speed.");
        return false; // Return false if _image or _spd is not a number
    }

    // Return true if the current frame plus speed reaches or exceeds the total frames
    return (_image + _spd) >= sprite_get_number(_sprite);
}

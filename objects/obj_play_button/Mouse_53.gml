/// @description Click the top object

var _clicked;
_clicked = instance_find(obj_play_button, 0);
with(obj_play_button) {
    if(depth < _clicked.depth && position_meeting(mouse_x, mouse_y, self)) {
        _clicked = id;
    }
}
if(position_meeting(mouse_x, mouse_y, _clicked)) {
    with(_clicked) {
        event_user(0);
    }
}
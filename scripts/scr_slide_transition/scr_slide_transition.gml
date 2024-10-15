/// @description SlideTransition(mode, target_room)
/// @param _mode sets transition mode between next, restart and goto.
/// @param _target sets the target room when using the goto mode.

function slide_transition(_mode, _target)
{
	with(obj_transition)
	{
		mode = argument[0];
		if(argument_count > 1) target = argument[1];
	}
}

function scr_set_sprite(){
	if (jumping || falling)
	{
		sprite_index = spr_player_jump;
	}
	
	if (!jumping && !falling)
	{
		sprite_index = spr_player_run;
		image_speed = 2;
	}
}
/// @description Add platformer mechanics

scr_player_get_inputs();
scr_check_state();

// Work out where to move horizontally
// hsp will be equal 0, -4, or 4 after the next expression
hsp = (key_right - key_left) * hsp_walk; 

// Work out where to move vertically
vsp = vsp + grv;

// Work out if we should jump
if ( place_meeting(x, y + 1, oWall) ) and (key_jump) 
{
	vsp = vsp_jump;
}

// Check for horizontal collisions and then move if we can
var onepixel = sign(hsp) // sign() returns -1, 0, or 1 
if ( place_meeting(x + hsp, y, oWall) )
{
	// move as close as we can 
	// move 1px towards the Wall until we're 1px away
	while ( !place_meeting(x + onepixel, y, oWall) )
	{
		x = x + onepixel;
	}
	hsp = 0;  // once we're 1 pixel away, stop moving
}
// update x
x = x + hsp;

// Check for vertical collisions
var onepixel = sign(vsp);
if ( place_meeting(x, y + vsp, oWall) )
{
	// move as close as we can, then stop
	while ( !place_meeting(x, y + onepixel, oWall) ) 
	{
		y = y + onepixel;	
	}
	vsp = 0;
}

// Update y
y = y + vsp;

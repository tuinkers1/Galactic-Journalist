/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

dialog.add (spr_NPC_dynamiteJohnson_portrait, "Hold it right there? Who're you?")
dialog.add (spr_player_portrait, "Just a sightseer.")
dialog.add (spr_NPC_dynamiteJohnson_portrait, "Another disaster tourist. Well, you stay back! I ain't lookin' for more troublemakers.")
dialog.add (spr_NPC_empty_portrait, "*He points to the large gap in front of you.*")
dialog.add (spr_NPC_dynamiteJohnson_portrait, "And I bet you can't cross this decently sized gap.")
dialog.add (spr_player_portrait, "Sure I can't.")
dialog.add (spr_NPC_empty_portrait, "*You can now use your Dash. Press Shift to dash in the direction you're moving.*")
instance_destroy(obj_dash_grant);
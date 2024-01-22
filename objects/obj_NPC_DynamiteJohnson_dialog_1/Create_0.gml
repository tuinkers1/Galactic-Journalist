/// @description Insert description here
// You can write your code in this editor





// Inherit the parent event
event_inherited();

if obj_dialogstatus_global.dialogstatusAlbert = 0 {
	dialog.add (spr_player_portrait, "I saw a walrus on the way over, but I didn't talk to him.")
	dialog.add (spr_NPC_dynamiteJohnson_portrait, "Oh, that fella! Big and jolly. A bit lazy though.")
	dialog.add (spr_NPC_dynamiteJohnson_portrait, "Oh, look at me. I ain't even introduced myself. Dynamite Johnson!")
	dialog.add (spr_player_portrait, "Memorable.")
} if obj_dialogstatus_global.dialogstatusAlbert > 0 {
	dialog.add (spr_player_portrait, "Albert told me about you. Dynamite Johnson right?")
	dialog.add (spr_NPC_dynamiteJohnson_portrait, "Yessir! Proud inheritor of the Dynamite Johnson's name!")
	dialog.add (spr_player_portrait, "And your son?")
	dialog.add (spr_NPC_dynamiteJohnson_portrait, "Dynamite Johnson!")
	dialog.add (spr_NPC_dynamiteJohnson_portrait, "The Second!")
	dialog.add (spr_player_portrait, "Mhm")
}
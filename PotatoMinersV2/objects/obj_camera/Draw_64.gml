// 
draw_sprite(spr_border, 0, 0, 0);

if (instance_exists(obj_player))
{
	draw_text_transformed(16, 16, "Coins: " + string(obj_player.coin), 2, 2, 0);
	draw_text_transformed(16, 48, "Pickaxe: " + string(obj_player.pickaxe), 2, 2, 0);
	draw_text_transformed(16, 80, "Sight: " + string(obj_player.sight), 2, 2, 0);
	draw_text_transformed(16, 112, "Lanterns: " + string(obj_player.lanterns), 2, 2, 0);
	draw_text_transformed(16, 144, "Supports: " + string(obj_player.supports), 2, 2, 0);
	draw_text_transformed(16, 176, "Stone: " + string(obj_player.stone), 2, 2, 0);
	draw_text_transformed(16, 208, "Iron: " + string(obj_player.iron), 2, 2, 0);
	draw_text_transformed(16, 240, "Gold: " + string(obj_player.gold), 2, 2, 0);
	draw_text_transformed(16, 272, "Diamond: " + string(obj_player.diamond), 2, 2, 0);
}

extends Control

var life_size = 49

func on_change_life(playerHealth):
	$lifes.rect_size.x = playerHealth * life_size

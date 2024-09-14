extends Node2D

var metal = 3

func _ready():
	Global.pointsPart2 = 0
	Global.trashs = 0

func _on_LMetal_area_entered(area):
	if area.name != "Metal" and area.name != "Metal2" and area.name != "Metal3":
		get_tree().reload_current_scene()
	elif area.name == "Metal":
		Global.pointsPart2 += 1
		$"Metal 1".queue_free()
	elif area.name == "Metal2":
		Global.pointsPart2 += 1
		$"Metal 2".queue_free()
	elif area.name == "Metal3":
		Global.pointsPart2 += 1
		$"Metal 3".queue_free()

func _on_LVidro_area_entered(area):
	if area.name != "Vidro":
		get_tree().reload_current_scene()
	else:
		Global.pointsPart2 += 1


func _on_LPlastico_area_entered(area):
	if area.name != "Plastico":
		get_tree().reload_current_scene()
	else:
		Global.pointsPart2 += 1


func _on_LOrganico_area_entered(area):
	if area.name != "Organico":
		get_tree().reload_current_scene()
	else:
		Global.pointsPart2 += 1

func _on_LPapel_area_entered(area):
	if area.name != "Papel" and area.name != "Papel2" and area.name != "Papel3":
		get_tree().reload_current_scene()
	elif area.name == "Papel":
		Global.pointsPart2 += 1
		$"Papel 1".queue_free()
	elif area.name == "Papel2":
		Global.pointsPart2 += 1
		$"Papel 2".queue_free()
	elif area.name == "Papel3":
		Global.pointsPart2 += 1
		$"Papel 3".queue_free()

func _on_LPerigoso_area_entered(area):
	if area.name != "Perigoso":
		get_tree().reload_current_scene()
	else:
		Global.pointsPart2 += 1

func _on_LNaoReciclavel_area_entered(area):
	if area.name != "NaoReciclavel":
		get_tree().reload_current_scene()
	else:
		Global.pointsPart2 += 1



func _on_TextureButton_pressed():
	if Global.pointsPart2 == 5:
		get_tree().change_scene("res://Levels/Level03.tscn")
	else:
		$"HUD 2/Error".visible = true

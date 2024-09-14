extends Node2D

var metal = 3

func _ready():
	Global.pointsPart2 = 0

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
	if area.name != "Papel":
		get_tree().reload_current_scene()
	else:
		Global.pointsPart2 += 1

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

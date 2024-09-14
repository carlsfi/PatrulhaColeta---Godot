extends Area2D

onready var changer = get_parent().get_node("Transition_in")
export var path : String



func _on_Net3_body_exited(body):
	if Global.trashs == 7:
		changer.change_scene(path)

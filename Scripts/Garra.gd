extends KinematicBody2D
class_name Garra

const NEW_ITEM := preload("res://Scenes/Trash01.tscn")
var direcao = 0
var is_holding := false
var canHold := false
export var collectedTrash = 1
export var collectedTrash2 = 1
export var collectedTrash3 = 1

func _physics_process(delta):
	if canHold and !is_holding:
		if Input.is_action_pressed("pick"):
			canHold = false
			is_holding = true
			var item_detector = $item_detector
			var items_detected = item_detector.get_overlapping_areas()
			for item_detected in items_detected:
				item_detected.queue_free()
			if Collected.collected == false:
				Collected.collected = true

func _process(delta):
	if Input.is_action_pressed("right"):
			direcao = 2	
	elif Input.is_action_pressed("left"):
			direcao = 1

	if direcao == 1:
		$texture.flip_h = false
	elif direcao == 2:
		$texture.flip_h = true
		
	if Collected.collected == false:
		$collected.visible = false
	elif Collected.collected == true:
		$collected.visible = true


func _on_item_detector_area_entered(area):
	if area.is_in_group("pickables") and !is_holding:
		canHold = true


func _on_Net_body_entered(body):
	if body.name == "Garra":
		if is_holding == true:
			Global.trashs += collectedTrash
			is_holding = false
			Collected.collected = false


func _on_Net2_body_entered(body):
	if body.name == "Garra":
		if is_holding == true:
			Global.trashs += collectedTrash2
			is_holding = false
			Collected.collected = false


func _on_Net3_body_entered(body):
	if body.name == "Garra":
		if is_holding == true:
			Global.trashs += collectedTrash3
			is_holding = false
			Collected.collected = false

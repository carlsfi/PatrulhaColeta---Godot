extends KinematicBody2D
class_name Player


var playerHealth = 3
var maxHealth = 3

export var vel = 250
var gravity = 200
var velocityG = 50
var dir =  Vector2()

var knockback_dir = 1
var knockback_int = 600

var hurted = false
var anim = "idle"

signal change_life(playerHealth)

func _ready():
	connect("change_life", get_parent().get_node("HUD/HBoxContainer/Vida/lifes"), "on_change_life")
	emit_signal("change_life", maxHealth)

func _process(delta):
	var direcao = 0
	
	if Input.is_action_pressed("right"):
		dir.x = vel
		direcao = 2	
	elif Input.is_action_pressed("left"):
		dir.x = -vel
		direcao = 1
	else:
		dir.x = 0

	if Input.is_action_pressed("down"):
		dir.y = vel
	elif Input.is_action_pressed("up"):
		dir.y = -vel
	else:
		dir.y = 0

	move_and_slide(dir)
	if direcao == 2:
		$texture.flip_h = false
	elif direcao == 1:
		$texture.flip_h = true
	position = position + (dir * delta)
	position.y += velocityG * delta
	
	
	if playerHealth == 0:
		Global.trashs = 0
		Global.playerHealth = 0
		Collected.collected = false
		get_tree().reload_current_scene()

	if hurted:
		anim = "hit"
		hurted = false
		playerHealth -= 1
		Global.playerHealth -= 1
		emit_signal("change_life", playerHealth)
	
	_set_animation()

func _set_animation():
	if $anim.assigned_animation != anim:
		$anim.play(anim)

func _on_hurtbox_body_entered(body):
	if body.name == "Birdie":
		hurted = true
	if body.name == "Pedra01":
		hurted = true
	if body.name == "Pedra02":
		hurted = true
	if body.name == "Pedra03":
		hurted = true
	if body.name == "Pedra04":
		hurted = true
	if body.name == "Pedra05":
		hurted = true
	if body.name == "Pedra06":
		hurted = true
	if body.name == "Pedra07":
		hurted = true
	if body.name == "Pedra08":
		hurted = true
	if body.name == "Pedra09":
		hurted = true
	if body.name == "Pedra10":
		hurted = true
	if body.name == "Pedra11":
		hurted = true
	if body.name == "Pedra12":
		hurted = true
	if body.name == "Anchor":
		hurted = true
	if body.name == "Pedraa":
		hurted = true
	if body.name == "Pedraa2":
		hurted = true
	if body.name == "Pedraa3":
		hurted = true
	if body.name == "Pedraa4":
		hurted = true
	if body.name == "Pedraa5":
		hurted = true
	if body.name == "Pedraa6":
		hurted = true
	if body.name == "Pedraa7":
		hurted = true
func _on_anim_animation_finished(anim_name):
	anim = "idle"

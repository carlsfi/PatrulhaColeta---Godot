extends CanvasLayer
func _ready():
	Global.playerHealth = 3

func _process(delta):
	if Global.playerHealth == 2:
		$HBoxContainer/lifes/life3.visible = false
	if Global.playerHealth == 1:
		$HBoxContainer/lifes/life2.visible = false
	if Global.playerHealth == 3:
		$HBoxContainer/lifes/life1.visible = true
		$HBoxContainer/lifes/life2.visible = true
		$HBoxContainer/lifes/life3.visible = true

	
	if Global.trashs == 5:
		$HBoxContainer/Coletas/correct.visible = true
		$HBoxContainer/Coletas/incorrect.visible = false
	else:
		$HBoxContainer/Coletas/correct.visible = false
		$HBoxContainer/Coletas/incorrect.visible = true

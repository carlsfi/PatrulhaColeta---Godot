extends ParallaxLayer

export(float) var SOMBRA_SPEED = -15

func _process(delta) -> void:
	self.motion_offset.x += SOMBRA_SPEED * delta

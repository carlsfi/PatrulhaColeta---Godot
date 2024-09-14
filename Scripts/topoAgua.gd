extends ParallaxLayer

export(float) var TOPO_SPEED = -20

func _process(delta) -> void:
	self.motion_offset.x += TOPO_SPEED * delta

extends CharacterBody2D


func _physics_process(delta):
	self.velocity = (get_global_mouse_position() - global_position)/delta
	move_and_slide()
	

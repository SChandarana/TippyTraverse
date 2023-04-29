extends CharacterBody2D

const FORCE = 2000
const DEAD_ZONE = 2

func _physics_process(delta):
	var mouseDiff = get_global_mouse_position() - global_position
	if mouseDiff.length() < DEAD_ZONE:
		return

	self.velocity = (mouseDiff) / delta

	if move_and_slide():
		for i in get_slide_collision_count():
			var col = get_slide_collision(i)
			if col.get_collider() is RigidBody2D:
				col.get_collider().apply_force(col.get_normal() * -FORCE, col.get_position() - col.get_collider().position)


func _on_damping_detector_body_entered(body):
	if body.has_method("activate_damping"):
		body.activate_damping()


func _on_damping_detector_body_exited(body):
	if body.has_method("deactivate_damping"):
		body.deactivate_damping()

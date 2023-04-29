extends RigidBody2D

const LINEAR_DAMPING = 3.0
const LINEAR_DAMPING_DEFAULT = 1.0
const ANGULAR_DAMPING = 3.0
const ANGULAR_DAMPING_DEFAULT = 0.1

func is_parcel():
	pass

func activate_damping():
	self.linear_damp = LINEAR_DAMPING
	self.angular_damp = ANGULAR_DAMPING

func deactivate_damping():
	self.linear_damp = LINEAR_DAMPING_DEFAULT
	self.angular_damp = ANGULAR_DAMPING_DEFAULT

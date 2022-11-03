extends KinematicBody2D

var speed = 50000
var velocity = Vector2.ZERO

func _process(delta):
	var dir = get_global_mouse_position() - global_position
	dir = dir.normalized()
	rotation = dir.angle()
	
	velocity = Vector2(speed, 0).rotated(rotation)
	
	if Vector2(get_global_mouse_position() - global_position).length() > 5:
		velocity = move_and_slide(velocity*delta)

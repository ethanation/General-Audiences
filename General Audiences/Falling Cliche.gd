extends RigidBody2D

signal caught
signal dropped

func _ready():
	var randpos = Vector2(rand_range(24, 1000), rand_range(0, 60))
	position = randpos

func _on_Area2D_area_entered(_area):
	emit_signal("dropped")
	queue_free()

func _on_Area2D_body_entered(_body):
	emit_signal("caught")
	queue_free()

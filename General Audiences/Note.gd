extends Node2D

signal played

func _on_Area2D_body_entered(_body):
	emit_signal("played")
	queue_free()

extends KinematicBody2D

func _process(_delta):
	if Input.is_action_pressed("ui_down"):
		position.y = 270
	
	if Input.is_action_pressed("ui_up"):
		position.y = 90
	
	if not (Input.is_action_pressed("ui_down")) and not (Input.is_action_pressed("ui_up")):
		position.y = 180

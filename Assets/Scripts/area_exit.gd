extends Area2D

@export var next_level = 0

func _on_body_entered(body):
	if body is PlayerController:
		GameManager._open_level(next_level)

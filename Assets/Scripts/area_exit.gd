extends Area2D
class_name AreaExit

@export var next_level = 0
@export var sprite : Sprite2D

var is_open = false

func _ready():
	_close()

func _open():
	is_open = true
	sprite.region_rect.position.x = 22

func _close():
	is_open = false
	sprite.region_rect.position.x = 0

func _on_body_entered(body):
	if is_open && body is PlayerController:
		GameManager._open_level(next_level)

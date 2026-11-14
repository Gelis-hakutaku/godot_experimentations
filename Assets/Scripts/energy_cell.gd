extends Area2D


func _on_body_entered(body):
	
	#pick up enegy cell
	if body is PlayerController:
		GameManager._add_energy_cells()
		queue_free()

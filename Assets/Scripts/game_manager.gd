extends Node

var level_path = "res://Assets/Scenes/Platformer2D/"
var levels = DirAccess.get_files_at(level_path)

var energyCells = 0

func _ready():
	_reset_energy_cells()

func _reset_energy_cells():
	energyCells = 0

func _set_up_area():
	_reset_energy_cells()

func _add_energy_cells():
	energyCells += 1
	#open portal
	if energyCells >= 4:
		var portal = get_tree().get_first_node_in_group("area_exits") as AreaExit
		portal._open()


func _open_level(level_index):
	
	if levels == null:
		print ("Error, couldb't open folder")
		return
	
	get_tree().change_scene_to_file(level_path + levels[level_index])
	print("Player entered Portal")
	_set_up_area()

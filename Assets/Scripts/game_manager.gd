extends Node

var level_path = "res://Assets/Scenes/Platformer2D/"
var levels = DirAccess.get_files_at(level_path)

func _open_level(level_index):
	
	if levels == null:
		print ("Error, couldb't open folder")
		return
	
	get_tree().change_scene_to_file(level_path + levels[level_index])
	print("Player entered Portal")

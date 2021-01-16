extends Node2D


var scenes = [preload("res://Scenes/Menu.tscn"), preload("res://Scenes/Cave_Level.tscn"), preload("res://Scenes/Forest_Level.tscn"), preload("res://Scenes/Win screen.tscn"), preload("res://Scenes/Loose screen.tscn")]

var previous_level_number = 0
var save_point
# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	load_scene(0)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if get_child_count() != 0:
		
		if get_child(0).load_scene_now:
			if previous_level_number == 4:
				
				load_scene(save_point)
			else:
				load_scene(get_child(0).scene_number_to_load)
		
		if get_child(0).Quit:
			get_tree().quit()

func load_scene(scene_number):
	if get_child_count() != 0:
		get_child(0).queue_free()
	var scene_to_load = scenes[scene_number].instance()
	self.add_child(scene_to_load)
	#print (scene_number)
	if scene_number != 4:
		save_point = scene_number
	previous_level_number = scene_number
	
	

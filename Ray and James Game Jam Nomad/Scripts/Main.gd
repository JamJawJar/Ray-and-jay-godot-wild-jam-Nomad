extends Node2D

var scenes = [preload("res://Scenes/Menu.tscn"), preload("res://Scenes/Level_Template.tscn")]
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
			load_scene(get_child(0).scene_number_to_load)

func load_scene(scene_number):
	if get_child_count() != 0:
		get_child(0).queue_free()
	var scene_to_load = scenes[scene_number].instance()
	self.add_child(scene_to_load)
	

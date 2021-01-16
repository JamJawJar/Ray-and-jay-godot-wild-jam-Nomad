extends Control

var scene_number_to_load = 1
var load_scene_now = false
var Quit = false


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("Quit"):
		Quit = true
	if Input.is_action_pressed("ui_accept"):
		load_scene_now = true



func _on_Play_Button_pressed() -> void:
	load_scene_now = true


func _on_Quit_Button_pressed() -> void:
	Quit = true

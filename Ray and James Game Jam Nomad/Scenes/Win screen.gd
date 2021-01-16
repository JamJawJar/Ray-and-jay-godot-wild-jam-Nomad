extends CanvasLayer

var scene_number_to_load = 0
var load_scene_now = false
var Quit = false

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	if Input.is_action_pressed("Quit"):
		Quit = true
	if Input.is_action_pressed("ui_accept"):
		load_scene_now = true

func _on_Button_pressed() -> void:
	load_scene_now = true

extends Node2D


var number_of_collectibles = 0
var change_world = false


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	number_of_collectibles	= get_tree().get_nodes_in_group("Portal_Collectibles").size()
	
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if $Player.number_of_collectibles_collected == number_of_collectibles:
		$Portal._turn_on_portal()
	change_world = $Portal.activate_portal

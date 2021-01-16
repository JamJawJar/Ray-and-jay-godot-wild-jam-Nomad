extends Node2D
#what scene to load next
var scene_number_to_load = 0
#if the the next scene should be loaded yet
var load_scene_now = false
#whether or not to quit the game
var Quit = false
#starting amount of collectibles
var total_number_of_collectibles = 0
#amount of collectibles left
var current_number_of_collectibles = 0


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#get the starting amount of collectibles
	total_number_of_collectibles	= get_tree().get_nodes_in_group("Portal_Collectibles").size()
	#get the scene to load next number
	scene_number_to_load = $"Portal".next_level
	#set the collectible counter to display the amount of collectibles
	$Collectible_Counter._update_collectible_amount(total_number_of_collectibles)
	
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	
	#load next scene if the player entered the active portal
	load_scene_now = $Portal.activate_portal
	#quit the game if the player decides too
	Quit = $Player.Quit
	
	
	if $Player.dead:
		scene_number_to_load = 4
		load_scene_now = true
	
	#find the amount of collectibles left
	current_number_of_collectibles = total_number_of_collectibles - $Player.number_of_collectibles_collected
	#update the collectible counter
	$Collectible_Counter._update_collectible_amount(current_number_of_collectibles)
	
	#When the player has collected all the collectables turn on the portal and tell the player
	if current_number_of_collectibles == 0:
		$Collectible_Counter._set_portal_open_message()
		$Portal._turn_on_portal()
	
	

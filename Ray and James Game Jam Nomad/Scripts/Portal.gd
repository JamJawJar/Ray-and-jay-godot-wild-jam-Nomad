extends Area2D

export var next_level = 0
#whether or no the portal is ready to be used
var portal_turned_on = false
#has the portal been activated
var activate_portal = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass

func _turn_on_portal():
	portal_turned_on = true
	#self.visible = true
	#change art so it is now on


#activates when player enters
func _on_Portal_body_entered(body: Node) -> void:
	if portal_turned_on:
		activate_portal = true

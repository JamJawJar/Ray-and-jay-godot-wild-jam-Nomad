extends KinematicBody2D



export var player_speed = 200.0


var number_of_collectibles_collected = 0
var Quit = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _physics_process(delta: float) -> void:
	get_direction_and_move()



func get_direction_and_move():
	var direction = Vector2(0, 0)
	if Input.is_action_pressed("Right"):
		direction += Vector2(1, 0)
	
	if Input.is_action_pressed("Left"):
		direction += Vector2(-1, 0)
		
	if Input.is_action_pressed("Up"):
		direction += Vector2(0, -1)
		
	if Input.is_action_pressed("Down"):
		direction += Vector2(0, 1)

	if direction.length() > 0:
		$Sprite.rotation = direction.angle() + (0.5 * PI)
	#$Sprite.rotation = atan2(direction.x, direction.y *-1)
	direction = direction.normalized()
	move_and_slide(direction * player_speed)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("Quit"):
		Quit = true




func _collectible_detected(collectible: Area2D) -> void:
	number_of_collectibles_collected += 1
	collectible.queue_free()
	




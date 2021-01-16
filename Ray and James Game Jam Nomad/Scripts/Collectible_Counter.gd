extends CanvasLayer


func _ready() -> void:
	pass

#changes label text to say how many collectibles are left
func _update_collectible_amount(collectibles_left):
	$MarginContainer/HBoxContainer/VBoxContainer/PanelContainer/Label.text = str(collectibles_left) + " to collect."

#changes label to tell player that the portal is open
func _set_portal_open_message():
	$MarginContainer/HBoxContainer/VBoxContainer/PanelContainer/Label.text = "The portal is now activated"

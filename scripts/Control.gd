extends Control

export(String) var scene_to_load


func _on_Button_pressed():
	get_tree().change_scene("res://stages/stage_menu.tscn")
	

#extends Button
#
#func _ready():
#	connect("pressed", self, "_on_pressed")
#	pass
#
#func _on_pressed():
#	get_tree().quit()
#	pass


func _on_Menu_Button_pressed():
	get_tree().change_scene("res://stages/stage_menu.tscn")
	pass # Replace with function body.



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

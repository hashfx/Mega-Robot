extends Area2D

# [x] apply a velocity
# [x] instantiate a flare
# [x] self-destroy when out of screen

export var velocity = Vector2()
const scn_flare = preload("res://scenes/flare.tscn")

func _ready():
	create_flare()
	
	yield($vis_notifier, "screen_exited")
	queue_free()
	pass

func _process(delta):
	translate(velocity * delta)
	pass

func create_flare():
	var flare = scn_flare.instance()
	flare.position = self.position
	utils.main_node.add_child(flare)
	pass

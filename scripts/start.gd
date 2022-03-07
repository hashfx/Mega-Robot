extends Sprite

export var velocity = Vector2()

func _ready():
	pass

func _process(delta):
	translate(velocity * delta)
	
	if position.y >= utils.view_size.y:
		position = Vector2(0, -180)
	pass

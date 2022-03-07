extends Sprite

func _ready():
	randomize()
	rotation_degrees = rand_range(0, 360)
	
	utils.remote_call("camera", "shake", 8, 0.2)
	audio_player.play("explosion")
	pass

extends Camera2D

var magnitude = 0
var timeleft  = 0
var is_shaking = false

func _ready():
	pass

func shake(new_magnitude, lifetime):
	if magnitude > new_magnitude: return
	
	magnitude = new_magnitude
	timeleft  = lifetime
	
	if is_shaking: return
	is_shaking = true
	
	while timeleft > 0:
		position.x = rand_range(-magnitude, +magnitude)
		position.y = rand_range(-magnitude, +magnitude)
		
		timeleft -= get_process_delta_time()
		yield(get_tree(), "idle_frame")
	
	magnitude  = 0
	is_shaking = false
	position = Vector2.ZERO
	pass

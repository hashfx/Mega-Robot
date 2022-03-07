extends "res://scripts/enemy.gd"

# [x] bounce screen
# [ ] shoot lasers

const scn_laser = preload("res://scenes/laser_enemy.tscn")

func _ready():
	velocity.x = utils.choose([+velocity.x, -velocity.x])
	
	yield(utils.create_timer(1), "timeout")
	shoot()
	pass

func _process(delta):
	# bouncing from screen
	if self.position.x <= 0+16:
		velocity.x = abs(velocity.x)
	if self.position.x >= utils.view_size.x-16:
		velocity.x = -abs(velocity.x)
	pass

func shoot():
	while true:
		var laser = scn_laser.instance()
		laser.position = $cannon.global_position
		utils.main_node.add_child(laser)
		
		yield(get_tree().create_timer(1.5), "timeout")
	pass

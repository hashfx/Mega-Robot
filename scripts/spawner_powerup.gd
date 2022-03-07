extends Node

const powerups = [
	preload("res://scenes/powerup_armor.tscn"),
	preload("res://scenes/powerup_laser.tscn")
]

func _ready():
	yield(utils.create_timer(rand_range(10, 15)), "timeout")
	spawn()
	pass

func spawn():
	while true:
		randomize()

		var enemy = utils.choose(powerups).instance()
		var enm_pos = Vector2()
		enm_pos.x   = rand_range(0+7, utils.view_size.x-7)
		enm_pos.y   = 0-7
		enemy.position = enm_pos
		$container.add_child(enemy)
		yield(utils.create_timer(rand_range(10, 15)), "timeout")
	pass

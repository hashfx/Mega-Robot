extends Node

func _ready():
	return
	yield(utils.create_timer(4), "timeout")
	play("music")
	pass

func play(name):
	var player = AudioStreamPlayer.new()
	player.stream = $loader_samples.get_resource(name)
	player.connect("finished", player, "queue_free")
	player.play()
	add_child(player)
	pass

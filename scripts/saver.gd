extends Node

var bestscore  = 0 setget set_bestscore
const filepath = "user://score.dat"

func _ready():
	load_score()
	pass

func load_score():
	var file = File.new()
	if not file.file_exists(filepath): return
	file.open(filepath, File.READ)
	bestscore = file.get_var()
	file.close()
	pass

func save_bestscore():
	var file = File.new()
	file.open(filepath, File.WRITE)
	file.store_var(bestscore)
	file.close()
	pass

func set_bestscore(value):
	bestscore = value
	save_bestscore()
	pass

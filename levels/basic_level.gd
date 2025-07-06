extends Node2D
class_name Level

var player: Player

func _init() -> void:
	self.player = preload("res://Test/archer.tscn").instantiate()
	self.player.position = global_position
	player.level = self
	add_child(self.player)
	
	
	
	var arr = [Vector2(100, 100), Vector2(-200, -100)]
	
	for i in arr:
		var creat = preload("res://Test/gopher.tscn").instantiate()
		creat.set_team(Entity.Teams.NEUTRAL)
		creat.position = position + i
		creat.level = self
		add_child(creat)
	
	for i in get_children():
		print(i)

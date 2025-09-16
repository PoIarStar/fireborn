class_name Level
extends Node2D


var player: Player
var global_time: int
var cursor: Entity


func _init() -> void:
	self.player = preload("res://Test/archer.tscn").instantiate()
	self.player.position = global_position
	player.level = self
	add_child(self.player)
	player.team = Entity.Teams.PLAYER
	
	
	var arr = [Vector2(100, 100), Vector2(-200, -100)]
	
	for i in arr:
		var creat: Creature = preload("res://Test/gopher.tscn").instantiate()
		creat.set_team(Entity.Teams.NEUTRAL)
		creat.position = position + i
		creat.level = self
		add_child(creat)
	
	for i in get_children():
		print(i)


func _ready() -> void:
	$Debugger.level = self


func _on_tick_timeout() -> void:
	global_time += 1

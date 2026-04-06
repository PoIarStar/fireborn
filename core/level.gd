class_name Level
extends Node2D

var global_time: int
var cursor: Entity


func _ready() -> void:
	$Debugger.level = self


func _on_tick_timeout() -> void:
	global_time += 1


func get_player() -> Creature:
	for i in get_children():
		if i is Creature:
			if i.control_type == Creature.ControlTypes.PLAYER:
				return i
	return null

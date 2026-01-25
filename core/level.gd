class_name Level
extends Node2D

var player: Creature
var global_time: int
var cursor: Entity


func _ready() -> void:
	$Debugger.level = self


func _on_tick_timeout() -> void:
	global_time += 1

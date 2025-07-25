class_name Impact
extends Node


var damage: int
var effects: Array[Effect]

func _init(damage: int, effects: Array[Effect]) -> void:
	self.damage = damage
	self.effects = effects

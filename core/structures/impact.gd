extends Node
class_name Impact

var damage: int
var effects: Array[Effect]

func _init(damage: int, effects: Array[Effect]) -> void:
	self.damage = damage
	self.effects = effects

class_name Impact
extends Object

## Воздействие. Структура для передачи урона и эфеектов, например, атакующими сущностями


var damage: int  ## Урон воздействия
var effects: Array[Effect]  ## Эффекты воздействия

func _init(damage: int, effects: Array[Effect]) -> void:
	self.damage = damage
	self.effects = effects

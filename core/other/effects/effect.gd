class_name Effect
extends Object

## Эффект - накладывается на существо и оказывает определённое влияние на его характеристики


var creature: Creature
var age: float = 0  ## возраст эффекта в секундах
var lifetime: int  ## время до истечения эффекта
var repeat_time: int  ## время, через которое повторяется основное действие эффекта. Например, отравление наносит урон каждую секунду
var next_repeat: int  ## момент следующего выполнения основного действия


func _init(lifetime: int, repeat_time: int) -> void:
	self.lifetime = lifetime
	self.repeat_time = repeat_time
	applying()
	next_repeat = repeat_time


func _process(delta: float) -> void:
	age += delta
	if age >= lifetime:
		removing()
		free()
	elif age >= next_repeat:
		next_repeat += repeat_time
		process()


func applying():  ## действие эффекта при наложении
	pass
	
	
func process():  ## основное действие эффекта
	pass


func removing():  ## действие эффекта при снятии/окончании
	pass


func on_impact(impact: Impact):  ## влияние эффекта на воздействие атаки
	pass


func modify_weapon(weapon: Weapon):  ## влияние на оружие при атаке
	pass

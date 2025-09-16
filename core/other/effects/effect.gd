class_name Effect
extends Node

## Эффект - накладывается на существо и оказывает определённое влияние на его характеристики

enum OverlayTypes {
	STACKABLE,  ## перекрываемый: эффекты накладываются поверх эффектов своего типа
	REPLACEABLE,  ## заменяемый: старый эффект заменяется новым
	SPECIAL,  ## специальный: особое поведение, задаётся вручную
}


var lifetime: int
var overlay_type: OverlayTypes = OverlayTypes.REPLACEABLE  ## тип перекрытия
var creature: Creature  ## существо, на которое наложен эффект

#var negative_effects: Array[Effect]

func set_lifetime(lifetime: int = 1):
	self.lifetime = lifetime


func _ready() -> void:
	applying()
	$LifetimeTimer.start(lifetime)


func applying():  ## действие эффекта при наложении
	pass


func removing():  ## действие эффекта при снятии/окончании
	pass


func on_impact(impact: Impact):  ## влияние эффекта на воздействие атаки
	pass


func modify_weapon(weapon: Weapon):  ## влияние на оружие при атаке
	pass


func _on_lifetime_timer_timeout() -> void:
	removing()
	queue_free()

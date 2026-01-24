class_name BaseEffect
extends Node

func applying():  ## действие эффекта при наложении
	pass


func removing():  ## действие эффекта при снятии/окончании
	pass


func on_impact(impact: Impact):  ## влияние эффекта на воздействие атаки
	pass


func modify_weapon(weapon: Weapon):  ## влияние на оружие при атаке
	pass

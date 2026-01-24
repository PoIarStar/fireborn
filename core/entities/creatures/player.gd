extends Character
class_name Player

## Игрок. Управляется человеком


func _init() -> void:
	team = Teams.PLAYER
	speed = 200

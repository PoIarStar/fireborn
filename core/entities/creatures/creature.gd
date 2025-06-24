extends Entity
class_name Creature



@export var armor: int = 0
var effects = []


func _init(team: Teams) -> void:
	super._init(team)

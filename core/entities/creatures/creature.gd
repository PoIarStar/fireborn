extends Entity
class_name Creature



@export var armor: int = 0
@export var max_hp: int = -1
var hp: int = max_hp

var inventory: Inventory = Inventory.new()
var effects = []


func _init(team: Teams) -> void:
	super._init(team)


func handle_impact(impact: Impact):
	for effect in effects:
		effect.on_impact(impact)
	
	if hp > 0:
		hp -= impact.damage
		if hp <= 0:
			state.death()

	effects.append_array(impact.effects)

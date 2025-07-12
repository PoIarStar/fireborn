extends Creature
class_name Fighter

var weapon: Weapon


func _init(team: Teams) -> void:
	super._init(team)
	

func attack(target: Vector2):
	self.level.spawn_attack(self.inventory.active_cell.attack, self, target.normalized())
	

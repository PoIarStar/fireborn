extends Creature
class_name Fighter

var weapon: Weapon


func _init(team: Teams) -> void:
	super._init(team)
	

func attack(target: Vector2):
	print(target)
	var attack = inventory.active_cell.attack.instantiate()
	attack.position = self.position
	attack.velocity = 1000 * target.normalized()
	self.level.add_child(attack)

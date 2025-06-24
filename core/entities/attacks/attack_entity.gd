extends Entity
class_name AttackEntity


var attacker: Player


func _init(atacker: Player) -> void:
	self.attacker = attacker

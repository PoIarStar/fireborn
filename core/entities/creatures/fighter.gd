extends Creature
class_name Fighter


func _init(team: Teams) -> void:
	super._init(team)
	
	
func can_attack() -> bool:
	return $WeaponCooldownTimer.is_stopped()
	

func attack(target: Vector2):
	if can_attack():
		var weapon: Weapon = inventory.active_cell.duplicate()  # чтобы не менять характеристики оружия
		
		for effect: Effect in effects:
			effect.modify_weapon(weapon)
		
		var attack: AttackEntity = weapon.get_attack()
		attack.position = self.position
		attack.activate(self, target.normalized())
		$WeaponCooldownTimer.start(inventory.active_cell.cooldown)
		self.level.add_child(attack)
	

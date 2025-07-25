extends Creature
class_name Fighter


func _init(team: Teams) -> void:
	super._init(team)
	
	
func can_attack() -> bool:  ## Возвращает [code]true[/code], если существо может атаковать в данный момент
	return $WeaponCooldownTimer.is_stopped()
	

func attack(target: Vector2):  ## Функция атаки. Применяет все эффекты и бонусы к оружию, после чего создаёт атаку
	if can_attack():
		var weapon: Weapon = inventory.active_cell.duplicate()  # чтобы не менять характеристики оружия
		
		for effect: Effect in effects:
			effect.modify_weapon(weapon)
		
		var attack: AttackEntity = weapon.get_attack()
		attack.position = self.position
		attack.activate(self, target.normalized())
		$WeaponCooldownTimer.start(inventory.active_cell.cooldown)
		self.level.add_child(attack)
	

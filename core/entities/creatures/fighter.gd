class_name Fighter
extends Creature

## Боец. Способен сражаться


func can_attack() -> bool:  ## Возвращает [code]true[/code], если существо может атаковать в данный момент
	return $WeaponCooldownTimer.is_stopped()
	

func attack(target: Vector2):  ## Функция атаки. Применяет все эффекты и бонусы к оружию, после чего создаёт атаку
	if can_attack():
		var weapon: Weapon = inventory.active_cell.duplicate()  # чтобы не менять характеристики оружия
		
		for effect: Effect in $Effects.get_children():
			effect.modify_weapon(weapon)
		
		var attack: AttackEntity = weapon.get_attack()
		attack.position = self.position
		self.get_parent().add_child(attack)
		attack.activate(self, target.normalized())
		$WeaponCooldownTimer.start(inventory.active_cell.cooldown)
	

func behaviour_player() -> void:
	super.behaviour_player()
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		attack(get_global_mouse_position() - self.global_position)

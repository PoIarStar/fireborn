class_name ArrowAttack
extends AttackEntity


func activate(attacker: Player, direction: Vector2) -> void:  ## Активирует атаку: задаёт направление, скорость и запускает таймер существования
	set_team(attacker.team)
	self.attacker = attacker
	self.direction = direction
	rotate(direction.angle())
	velocity = speed * direction
	$LifetimeTimer.start(lifetime)

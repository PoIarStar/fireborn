class_name AttackEntity
extends Entity


signal creature_entered(creature: Creature)


var impact: Impact  ## Воздействие атаки
var lifetime: int  ## Продолжительность существования атаки
var attacker: Fighter  ## Атакующий - боец, создатель атаки
var direction: Vector2  ## Направление атаки


func activate(attacker: Creature, direction: Vector2) -> void:  ## Активирует атаку: задаёт направление и запускает таймер существования
	set_team(attacker.team)
	self.attacker = attacker
	self.direction = direction
	rotate(direction.angle())
	$LifetimeTimer.start(lifetime)


func _on_lifetime_timer_timeout() -> void:
	queue_free()


func _on_interaction_range_body_entered(body: Node2D) -> void:
	if body is Creature:
		creature_entered.emit(body)
		if body.team != team:
			body.handle_impact(impact)

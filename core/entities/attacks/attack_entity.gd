extends Entity
class_name AttackEntity


signal creature_entered(creature: Creature)


var impact: Impact
var lifetime: int


func _init(attacker: Player, team: Teams, direction: Vector2) -> void:
	super._init(team)
	self.attacker = attacker
	self.direction = direction
	rotate(direction.angle())
	$LifetimeTimer.start(lifetime)


func _on_lifetime_timer_timeout() -> void:
	queue_free()


func _on_interaction_range_body_entered(body: Node2D) -> void:
	if body is Creature:
		print(1)
		#creature_entered(body.)

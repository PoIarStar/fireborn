extends Entity
class_name AttackEntity


signal creature_entered(creature: Creature)


var impact: Impact
var lifetime: int
var attacker: Fighter
var direction: Vector2


func _init() -> void:
	super._init(Teams.NEUTRAL)


func activate(attacker: Player, team: Teams, direction: Vector2) -> void:
	set_team(team)
	self.attacker = attacker
	self.direction = direction
	rotate(direction.angle())
	velocity = speed * direction
	$LifetimeTimer.start(lifetime)


func _on_lifetime_timer_timeout() -> void:
	queue_free()


func _on_interaction_range_body_entered(body: Node2D) -> void:
	if body is Creature:
		body.handle_impact(impact)

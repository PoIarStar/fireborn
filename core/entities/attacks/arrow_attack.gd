extends AttackEntity
class_name ArrowAttack


func _init(attacker: Player, team: Teams, lifetime: int, direction: Vector2) -> void:
	super._init(attacker, team, lifetime)
	self.direction = direction
	velocity = direction.normalized() * speed

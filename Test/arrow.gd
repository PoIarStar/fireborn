extends ArrowAttack
class_name Arrow

func _init(attacker: Player, team: Teams, direction: Vector2) -> void:
	super._init(attacker, team, direction)
	self.impact = Impact.new(10, [])

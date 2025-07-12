extends ArrowAttack
class_name Arrow

func _init() -> void:
	self.impact = Impact.new(10, [])
	self.lifetime = 10

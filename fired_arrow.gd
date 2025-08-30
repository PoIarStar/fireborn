class_name FiredArrow
extends Arrow



func _init() -> void:
	self.impact = Impact.new(10, [Burning.new(5)])
	self.lifetime = 10

class_name FiredArrow
extends Arrow


@export var burning: PackedScene


func _init() -> void:
	var eff: Burning = preload("res://Test/burning.tscn").instantiate()
	eff.set_lifetime(5)
	self.impact = Impact.new(10, [eff])
	self.lifetime = 10

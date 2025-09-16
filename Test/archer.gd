extends Player
class_name Archer


func _init() -> void:
	super._init()
	self.inventory.active_cell = preload("res://Test/bow.tscn").instantiate()

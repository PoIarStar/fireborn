extends Player
class_name Archer


func _init() -> void:
	super._init()
	inventory.active_cell = Bow.new()
	print(inventory.active_cell)

extends Mage
class_name Archer


func _init() -> void:
	self.inventory.active_cell = preload("res://Test/bow.tscn").instantiate()

func _ready():
	$Camera2D.enabled = true
	$Camera2D.make_current()

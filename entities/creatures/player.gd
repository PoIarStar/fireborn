extends Character
class_name Player


func _init() -> void:
	super._init(Teams.PLAYER)


func main(delta: float):
	velocity = Input.get_vector("ui_right", "ui_left", "ui_down", "ui_up") * speed

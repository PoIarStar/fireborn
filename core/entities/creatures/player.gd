extends Character
class_name Player

## Игрок. Управляется человеком


func _init() -> void:
	team = Teams.PLAYER
	speed = 200


func main(delta: float):
	velocity = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down") * speed
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		attack(get_global_mouse_position() - self.global_position)

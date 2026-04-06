extends Control


func _on_button_play_pressed() -> void:
	Input.action_press("ui_pause")


func _on_button_menu_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://game/gui/main_menu.tscn")

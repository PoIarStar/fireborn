extends Control


func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_pause"):
		var pause_menu = find_child("CanvasLayer").find_child("PauseMenu")
		pause_menu.visible = not pause_menu.visible
		$TestLevel.visible = not $TestLevel.visible
		get_tree().paused = not get_tree().paused

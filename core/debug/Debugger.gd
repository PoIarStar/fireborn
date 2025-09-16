extends CanvasLayer


var level: Level
# Called when the node enters the scene tree for the first time.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("ui_debugger"):
		visible = not visible
	
	$GlobalStates.text = 'Global time: ' + str(level.global_time)
	
	if not level.cursor:
		$EntityStates.text = ""
	elif level.cursor is Creature:
		$EntityStates.text = level.cursor.name + \
		"\nHealth: " + str(level.cursor.hp) + \
		"\nTeam: " + str(level.cursor.team) + \
		"\nState: " + str(level.cursor.state.state) + \
		"\nEffects: " + str(level.cursor.find_child("Effects").get_children())
	elif level.cursor is Entity:
		$EntityStates.text = level.cursor.name + \
		"\nTeam: " + str(level.cursor.team) + \
		"\nState: " + str(level.cursor.state.state)
	else:
		print("Unknown ERROR. We have found it")

extends CanvasLayer


@onready var player: Player = get_node("../Player")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var text = 'Player states:\nHealth: ' + str(player.hp) + '\nState: ' + str(player.state.state)
	text += str(player.velocity)
	
	$PlayerStates.text = text
	$PlayerStates.show()

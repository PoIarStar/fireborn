extends CanvasLayer


var player: Player
# Called when the node enters the scene tree for the first time.

func _init(player: Player):
	self.player = player


func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var text = 'Player states: ' + player.name + '\nHealth: ' + str(player.hp) + '\nTeam: ' + str(player.team) + '\nActive weapon: ' + str(player.inventory.active_cell) + '\nState: ' + str(player.state.state)
	text += "\nLocal pos: " + str(player.position) + "\nGlobal pos: " + str(player.global_position)
	text += "\nVelocity: " + str(player.velocity)
	
	$PlayerStates.text = text
	$PlayerStates.show()

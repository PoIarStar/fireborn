extends CharacterBody2D
class_name Entity


enum Teams{
	NEUTRAL,
	LOYAL,
	PLAYER,
	ENEMY,
	SPELL
}


@onready var state: StateMachine = StateMachine.new(self)
@export var speed: int = 200
@export var team: Teams = Teams.NEUTRAL
var level


func _init(team: Teams) -> void:
	self.team = team


func _physics_process(delta):
	move_and_slide()


func _process(delta):	
	if (velocity.x > 0 and $anims.scale.x < 0) or (velocity.x < 0 and $anims.scale.x > 0):
		$anims.scale.x *= -1
	state.check()
	main(delta)


func main(delta: float):
	pass


func set_team(team: Teams):
	self.team = team


func get_anims() -> AnimatedSprite2D:
	return $anims

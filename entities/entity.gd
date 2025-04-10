extends CharacterBody2D
class_name Entity

enum Teams{
	NEUTRAL,
	LOYAL,
	PLAYER,
	ENEMY,
	SPELL
}


@onready var anims: Node2D = get_node("anims")

@export var speed: int = 200
@export var max_hp: int = -1
@export var team: Teams = Teams.NEUTRAL
var hp: int

var state: StateMachine = StateMachine.new(self)


func _init(team: Teams) -> void:
	self.team = team


func take_damage(damage: int):
	if hp > 0:
		hp -= damage
		if hp <= 0:
			state.death()

func _physics_process(delta):
	move_and_slide()

func _process(delta):	
	if (velocity.x > 0 and anims.scale.x < 0) or (velocity.x < 0 and anims.scale.x > 0):
		anims.scale.x *= -1
	main(delta)


func main(delta: float):
	pass

extends Node
class_name StateMachine

var entity: Entity
var anims: AnimatedSprite2D

enum States{
	IDLE,
	MOVE,
	ATTACK,
	MOVENATTACK,
	DYING,
	DIE
}

const movable_states_count: int = 4
var state: States

func _init(entity: Entity):
	self.entity = entity
	self.anims = entity.anims


func _process(delta: float) -> void:
	if entity.velocity == Vector2.ZERO:
		stay()
	elif state >= movable_states_count:
		entity.velocity = Vector2.ZERO
	else:
		move()
	play_anim()


func play_anim():
	match state:
		States.IDLE:
			anims.play("idle")
		States.MOVE:
			anims.play("")
		pass # дописать названия остальных анимок, когда будут готовы


func move():
	match state:
		States.IDLE:
			state = States.MOVE
		States.ATTACK:
			state = States.MOVENATTACK


func stay():
	match state:
		States.MOVE:
			state = States.IDLE
		States.MOVENATTACK:
			state = States.ATTACK


func dying():
	state = States.DYING

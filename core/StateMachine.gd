class_name StateMachine
extends Node

## Машина состояний. Отвечает за переключение анимаций и слоёв видимости


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
var state: States = States.IDLE

func _init(entity: Entity):
	self.entity = entity
	self.anims = entity.get_anims()


func check() -> void:
	if entity.velocity == Vector2.ZERO:
		stay()
	#elif state >= movable_states_count:
	#	entity.velocity = Vector2.ZERO
	else:
		move()
	play_anim()


func play_anim():
	match state:
		States.IDLE:
			pass
		States.MOVE:
			pass
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

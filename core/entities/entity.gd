class_name Entity
extends CharacterBody2D

## Базовый класс всех сущностей. Описывает физику и направление анимации. Любое дополнительное поведение должно описываться в функции main()


enum Teams{  ## Перечисление всех команд
	NEUTRAL,  ## Нейтральные существа
	LOYAL,  ## Мирные существа
	PLAYER,  ## Команда игрока
	ENEMY,  ## Враждебные существа
	SPELL,  ## Заклинания
}


@onready var state: StateMachine = StateMachine.new(self)  ## Машина состояний
@export var speed: int = 200  ## Скорость сущности
@export var team: Teams = Teams.NEUTRAL  ## Команда сущности
var level  ## Уровень, на котором находится сущность


func _init(team: Teams) -> void:
	self.team = team


func _physics_process(delta):
	move_and_slide()


func _process(delta):	
	if (velocity.x > 0 and $anims.scale.x < 0) or (velocity.x < 0 and $anims.scale.x > 0):
		$anims.scale.x *= -1
	state.check()
	main(delta)


func main(delta: float):  ## Функция, задающая поведение сущности
	pass


func set_team(team: Teams):  ## Сеттер. Устанавливает команду
	self.team = team


func get_anims() -> AnimatedSprite2D:  ## Геттер. Возвращает анимации
	return $anims

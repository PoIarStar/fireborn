class_name Entity
extends CharacterBody2D

## Базовый класс всех сущностей. Описывает физику и направление анимации. Любое дополнительное поведение должно описываться в функции main()

enum ControlTypes {  ## Тип управления. Отвечает за выбор поведения
	PLAYER,  ## Игрок. Управление с клавиатуры
	BOT,  ## Бот. Управление алгоритмом игры
}

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
@export var control_type: ControlTypes = ControlTypes.BOT


func _physics_process(_delta):
	move_and_slide()


func _process(delta):	
	if (velocity.x > 0 and $anims.scale.x < 0) or (velocity.x < 0 and $anims.scale.x > 0):
		$anims.scale.x *= -1
	state.check()
	main(delta)


func behaviour_player() -> void:
	velocity = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down").rotated(rotation) * speed


func behavior_bot() -> void:
	pass


func main(_delta: float):
	if control_type == ControlTypes.PLAYER:
		behaviour_player()
	else:
		behavior_bot()


func set_team(team: Teams):  ## Сеттер. Устанавливает команду
	self.team = team


func get_anims() -> AnimatedSprite2D:  ## Геттер. Возвращает анимации
	return $anims


func _on_mouse_entered() -> void:
	get_parent().cursor = self


func _on_mouse_exited() -> void:
	get_parent().cursor = null

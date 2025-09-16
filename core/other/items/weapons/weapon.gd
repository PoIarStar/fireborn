class_name Weapon
extends Item


## Предмет, используемый для атаки. Хранит и обрабатывает основную информацию, касающуюся атак, в том числе само действие атаки
##
## Единственный тип предметов, способный находиться в активной ячейке


enum Types{  ## Типы оружия
	LIGHT,  ## Лёгкое оружие
	MEDIUM,  ## Среднее оружие
	HEAVY,  ## Тяжёлое оружие
	THROWING,  ## Ручное метательное оружие
	SMALLARMS,  ## Устройства для метания: луки, пращи, огнестрелы
	SUMMON,  ## Предметы для призыва
}


@export var attack_scene: PackedScene  ## Сцена атаки оружия. Сцена должна иметь тип [AttackEntity].

@export var damage: int  ## Наносимый оружием урон
@export var critical_damage: int  ## Критический урон
@export var critical_chance: float  ## Шанс критического урона
@export var cooldown: int  ## Время перезарядки


func get_attack() -> AttackEntity:  ## Возвращает инстанцированную атаку с заданным воздействием
	var attack: AttackEntity = attack_scene.instantiate()
	attack.impact.damage = critical_damage if Funcs.outcome(critical_chance) else damage
	return attack

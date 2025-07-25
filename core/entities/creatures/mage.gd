extends Fighter
class_name Mage


@export var max_mana: int = 0  ## Максимальное количество очков маны
var mana: int  ## Текущее значение маны
var spell_book: SpellBook  ## Книга заклинаний


func _init(team: Teams) -> void:
	super._init(team)

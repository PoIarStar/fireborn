extends Fighter
class_name Mage


@export var max_mana: int = 0
var mana: int
var active_spell: Spell
var spell_book: SpellBook


func _init(team: Teams) -> void:
	super._init(team)

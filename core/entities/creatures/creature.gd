class_name Creature
extends Entity




@export var armor: int = 0  ## Броня существа
@export var max_hp: int = -1  ## Максимальное здоровье существа
var hp: int = max_hp  ## Здоровье существа

var inventory: Inventory = Inventory.new()  ## Инвентарь
var effects = []  ## Список эффектов


func _init(team: Teams) -> void:
	super._init(team)


func handle_impact(impact: Impact):  ## Обработка эффектов
	for effect in effects:
		effect.on_impact(impact)
	
	if hp > 0:
		hp -= impact.damage
		if hp <= 0:
			state.dying()
			queue_free()

	effects.append_array(impact.effects)

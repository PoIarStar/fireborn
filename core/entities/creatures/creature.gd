class_name Creature
extends Entity




@export var armor: int = 0  ## Броня существа
@export var max_hp: int = -1  ## Максимальное здоровье существа
var hp: int = max_hp  ## Здоровье существа

var inventory: Inventory = Inventory.new()  ## Инвентарь
var effects = []  ## Список эффектов


func handle_impact(impact: Impact):  ## Обработка эффектов
	for effect in $Effects.get_children():
		effect.on_impact(impact)
	
	if hp > 0:
		hp -= impact.damage
		if hp <= 0:
			state.dying()
			queue_free()

	for effect in impact.effects:
		$Effects.add_child(effect)

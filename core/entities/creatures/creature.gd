class_name Creature
extends Entity




@export var armor: int = 0  ## Броня существа
@export var max_hp: int = -1  ## Максимальное здоровье существа
var hp: int = max_hp  ## Здоровье существа

var inventory: Inventory = Inventory.new()  ## Инвентарь


func handle_impact(impact: Impact):  ## Обработка эффектов
	for effect in $Effects.get_children():
		effect.on_impact(impact)
		
	for effect in impact.effects:
		var eff = effect.duplicate()
		eff.lifetime = effect.lifetime
		$Effects.add_child(eff)
	
	handle_damage(impact.damage)



func handle_damage(damage: int):
	if hp > 0:
		hp -= damage
		if hp <= 0:
			state.dying()
			queue_free()

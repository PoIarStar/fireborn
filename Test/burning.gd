class_name Burning
extends RepeatingEffect


func _ready() -> void:
	super._ready()
	print(lifetime)


func on_impact(impact: Impact):
	var replace: bool = false
	for effect: Effect in impact.effects:
		if effect is Burning:
			replace = true
			break
	if replace:
		queue_free()

func repeat():
	get_parent().get_parent().handle_damage(2)

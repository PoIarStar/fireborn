class_name Burning
extends RepeatingEffect


func on_impact(impact: Impact):
	var replace: bool = false
	for effect: Effect in impact.effects:
		if effect is Burning:
			replace = true
			break
	if replace:
		free()

class_name Effect
extends BaseEffect

## Эффект - накладывается на существо и оказывает определённое влияние на его характеристики

enum OverlayTypes {
	STACKABLE,  ## перекрываемый: эффекты накладываются поверх эффектов своего типа
	REPLACEABLE,  ## заменяемый: старый эффект заменяется новым
	SPECIAL,  ## специальный: особое поведение, задаётся вручную
}


var lifetime: int ## продолжительность жизни эффекта
var overlay_type: OverlayTypes = OverlayTypes.REPLACEABLE  ## тип перекрытия

func set_lifetime(lifetime: int = 1):
	self.lifetime = lifetime


func _ready() -> void:
	applying()
	$LifetimeTimer.start(lifetime)



func _on_lifetime_timer_timeout() -> void:
	removing()
	queue_free()

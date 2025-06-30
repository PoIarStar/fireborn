extends Node
class_name Effect


var lifetime: int
var repeat_time: int


func _init(lifetime: int, repeat_time: int) -> void:
	self.lifetime = lifetime
	self.repeat_time = repeat_time
	applying()
	$LifetimeTimer.start(lifetime)
	$RepeatTimer.start(repeat_time)


func applying():
	pass
	
	
func process():
	pass


func removing():
	pass


func on_impact(impact: Impact):
	pass


func _on_lifetime_timer_timeout() -> void:
	removing()
	queue_free()  # delete object


func _on_repeat_timer_timeout() -> void:
	process()
	$RepeatTimer.start(repeat_time)

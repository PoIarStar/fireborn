class_name RepeatingEffect
extends Effect

var repeat_time: float

func _ready() -> void:
	super._ready()
	$RepeatTimer.start(repeat_time)
	
func set_repeat_time(time: float):
	repeat_time = time


func repeat():
	pass


func _on_repeat_timer_timeout() -> void:
	repeat()

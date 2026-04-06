@abstract
class_name Task
extends Object

var description: String
var is_done: bool = false
var quest_point_id: int

@abstract func get_description() ## Отобразить описание задания. Некоторые виды заданий могут добавлять дополнительную информацию к описанию, например, количество целей. Также определяет поведение при отсутствии описанияй

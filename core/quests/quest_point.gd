class_name QuestPoint
extends Node2D

@export var id: int = 0

signal destroyed()
signal entity_entered(entity: Entity)
signal entity_exited(entity: Entity)


func _on_tree_exiting() -> void:
	destroyed.emit()


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is Entity:
		entity_entered.emit(body)


func _on_area_2d_body_exited(body: Node2D) -> void:
	if body is Entity:
		entity_exited.emit(body)

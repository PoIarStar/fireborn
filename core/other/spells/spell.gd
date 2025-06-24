extends Node2D
class_name Spell

enum Types{
	Creation,
	Destruction
}

@export var type: Types
@export var cost: int
@export var level: int
@export var description: String

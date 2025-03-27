extends Node2D
class_name Item


enum Types{
	Usable,
	Weapon,
	Ingredient,
	SellOnly,
	QuestsOnly
}

@export var cost: int
@export var type: Types
@export var description: String

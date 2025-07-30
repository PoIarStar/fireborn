class_name Spell
extends Node2D

## Заклинание


enum Types{  ## Перечисление стихий
	Creation,  ## Созидание
	Destruction  ## Разрушение
}

@export var type: Types  ## Стихия заклинания
@export var cost: int  ## Стоимость заклинания в мане
@export var level: int  ## Круг заклинания - его сложность
@export var description: String  ## Описание

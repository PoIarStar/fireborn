class_name Item
extends Node2D

## Предмет. Может храниться в инвентаре, имеет стоимость


@export var cost: int = -1  ## Стоимость предмета. Предмет с отрицательной стоимостью не может быть куплен или продан
@export var description: String  ## Описание предмета

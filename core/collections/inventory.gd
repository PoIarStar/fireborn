class_name Inventory
extends Object

## Инвентарь существа, отсортированный массив предметов с активной ячейкой

var active_cell: Weapon  ## Активная ячейка инвентаря. В ней может лежать только оружие
var items: Array[Item] = []  ## Список предметов в инвентаре

class_name Funcs
extends Node

## Класс, описывающий некоторые базовые функции


static func outcome(probability: float):  ## определяет исход случайного события по его вероятности
	return randf() <= probability

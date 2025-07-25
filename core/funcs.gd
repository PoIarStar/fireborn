class_name Funcs
extends Node


static func outcome(probability: float):  ## определяет исход случайного события по его вероятности
	return randf() <= probability

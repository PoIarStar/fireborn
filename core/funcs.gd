class_name Funcs
extends Node


static func outcome(probability: float):  ## определяет исход случайного события по его вероятности
	var ans = randf() <= probability
	print(probability)
	print(ans)
	return ans

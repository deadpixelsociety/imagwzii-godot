extends Node


func _init():
	randomize()


func get_random_color(from: float, to: float) -> Color:
	randomize()
	return Color(
		rand_range(from, to),
		rand_range(from, to),
		rand_range(from, to),
		1.0
	)

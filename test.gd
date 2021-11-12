extends Node2D


func _ready():
	var test = Text.get_string("I MADE A GAME WITH ZOMBIES IN IT!")
	test.scale = Vector2(2, 2)
	test.flash_character = 1
	add_child(test)

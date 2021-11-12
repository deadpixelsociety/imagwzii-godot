extends Node2D
class_name TextString

var flash_character = -1 setget _set_flash_character, _get_flash_character
var justify: int = Text.Justify.LEFT setget _set_justify, _get_justify
var text = "" setget _set_text, _get_text
var width = 0

var _shapes = []


func _init():
	randomize()


func _process(_delta):
	if flash_character != -1:
		update()


func _draw():
	var loc = position
	match justify:
		Text.Justify.RIGHT:
			loc.x -= width
		Text.Justify.CENTER:
			loc.x -= width * 0.5
	loc.y -= scale.y * 2.5
	
	for i in _shapes.size():
		var shape = _shapes[i] as TextShape
		
		var render_color = modulate
		if i == flash_character:
			render_color = Color(
				rand_range(0.5, 1.0),
				rand_range(0.5, 1.0),
				rand_range(0.5, 1.0),
				1.0
			)

		shape.render(self, loc, scale, render_color)
		loc.x += shape.get_size(scale.x)
	

func _set_text(value: String):
	text = value
	_get_shapes()
	update()


func _get_text() -> String:
	return text


func _set_flash_character(value: int):
	flash_character = value
	update()


func _get_flash_character() -> int:
	return flash_character


func _set_justify(value: int):
	justify = value
	update()


func _get_justify() -> int:
	return justify


func _get_shapes():
	_shapes.clear()
	width = 0
	
	if not text or text.empty():
		return
	
	for i in text.length():
		var c = text[i]
		var shape = Text.get_shape(c)
		_shapes.append(shape)
		width += shape.get_size(scale.x)

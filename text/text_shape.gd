class_name TextShape

var width = 0

var _dot: Array


func render(canvas_item: CanvasItem, position: Vector2, scale: Vector2, color: Color):
	position.x += width * scale.x
	
	for i in range(0, Text.GLYPH_HEIGHT):
		for t in range(0, Text.GLYPH_WIDTH):
			if _dot[i][t]:
				var offset = Vector2(t * -scale.x, i * scale.y)
				var rect = Rect2(position + offset, scale)
				canvas_item.draw_rect(rect, color, true)


func get_size(scale: float) -> float:
	return (width + 1) * scale


func configure(src: Array):
	_dot = Arrays.init2D(5, 5, false)
		
	width = 0
	for i in src.size():
		var t = 0
		while src[i] > 0:
			_dot[i][t] = src[i] % 10 == 1
			src[i] /= 10
			t += 1
			if t > width:
				width = t



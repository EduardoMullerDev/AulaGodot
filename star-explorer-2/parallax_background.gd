extends ParallaxBackground

func _ready():
	var layer1 = ParallaxLayer.new()
	layer1.motion_scale = Vector2(0.1, 0.1)  	add_child(layer1)
	
	var sprite1 = Sprite2D.new()
	sprite1.texture = load("res://assets/Background/Space_Background1.png")  # Substitua pelo caminho da sua imagem
	layer1.add_child(sprite1)

	var layer2 = ParallaxLayer.new()
	layer2.motion_scale = Vector2(0.5, 0.5)  
	add_child(layer2)
	
	var sprite2 = Sprite2D.new()
	sprite2.texture = load("res://assets/Background/Space_Background1.png")  # Substitua pelo caminho da sua imagem
	layer2.add_child(sprite2)

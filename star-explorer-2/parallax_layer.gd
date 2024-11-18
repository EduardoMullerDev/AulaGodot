extends ParallaxLayer

var speed = 200  # Velocidade do movimento de fundo
var background1 : Sprite2D
var background2 : Sprite2D
var background_width : float

func _ready():
	print("Ready function called")
	# Obter referências às imagens de fundo
	background1 = $Sprite1
	background2 = $Sprite2
	
	# Definir a largura das imagens de fundo
	background_width = background1.texture.get_size().x
	
	# Posicionar a segunda imagem de fundo logo após a primeira
	background2.position.x = background_width

func _process(delta):
	print("Process function called")
	# Mover as imagens de fundo para a esquerda
	background1.position.x -= speed * delta
	background2.position.x -= speed * delta
	
	# Reposicionar as imagens quando saírem da tela
	if background1.position.x + background_width < 0:
		background1.position.x = background2.position.x + background_width
	if background2.position.x + background_width < 0:
		background2.position.x = background1.position.x + background_width

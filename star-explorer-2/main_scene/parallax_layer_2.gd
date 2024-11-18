extends ParallaxLayer

var motion = Vector2(-50, 0)  
var speed = -50  

func _ready():
	set_mirroring(motion) 

func _process(delta):
	speed -= 5
	set_motion_offset(motion + Vector2(speed, 0))
	
	

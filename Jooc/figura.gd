extends KinematicBody2D
var velocitat := 1000
var moviment := Vector2.ZERO
var gravetat := Vector2.DOWN * 2000
var direccio := Vector2.ZERO
var salt := 900


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	moviment.x = 300
	direccio.x = 0
	if Input.is_action_pressed("puja") and is_on_floor():
		moviment.y = -salt
	
#	move_and_slide(direccio.normalized() * velocitat)
	moviment += gravetat * delta
	
	moviment = move_and_slide(moviment, Vector2.UP)
	




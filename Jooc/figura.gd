extends KinematicBody2D
var velocitat := 100
var moviment := Vector2.ZERO
var gravetat := Vector2.DOWN * 100
var direccio := Vector2.ZERO


# Called when the node enters the scene tree for the first time.
func _ready():
	position = Vector2(0, 0)
	scale = Vector2(1,1)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	moviment += gravetat * delta
	if Input.is_action_pressed("ves_dreta"):
		direccio += Vector2.RIGHT
	if Input.is_action_pressed("ves_esq"):
		direccio += Vector2.LEFT
	if Input.is_action_pressed("baixa"):
		direccio += Vector2.DOWN
	if Input.is_action_pressed("puja"):
		direccio += Vector2.UP
	
	move_and_slide(direccio.normalized() * velocitat)
	moviment += gravetat * delta
	move_and_slide(moviment)

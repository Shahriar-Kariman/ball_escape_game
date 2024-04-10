extends Camera3D

@export var target : Node3D
var speed = PI/8
var offset
var angle = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	offset = position - target.position

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	angle+= speed*delta
	position = offset.rotated(Vector3.UP, angle) + target.position
	angle = fmod(angle, 2*PI)
	look_at(target.position, Vector3.UP)

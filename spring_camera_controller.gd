extends Camera3D

@export var target : Node3D
var springConstant = 72
var dampConstant

var offset
var actualPosition
var velocity

# Called when the node enters the scene tree for the first time.
func _ready():
	dampConstant = 2.0 * sqrt(springConstant)
	offset = position - target.position
	actualPosition = position
	velocity = Vector3.ZERO

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var idealPosition = target.position + offset
	var displacement = actualPosition - idealPosition
	var springAccel = (-springConstant * displacement) - (dampConstant * velocity)
	velocity += springAccel * delta
	actualPosition += velocity * delta
	position = actualPosition

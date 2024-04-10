extends Camera3D

@export var target : Node3D

var offset : Vector3

# Called when the node enters the scene tree for the first time.
func _ready():
	offset = position - target.position

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position = target.position + offset

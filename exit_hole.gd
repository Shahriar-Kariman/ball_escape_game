extends MeshInstance3D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_just_pressed("small"):
		scale = Vector3(1.0,0.1,1.0)
	if Input.is_action_just_pressed("large"):
		scale.x *= 1.5
		scale.z *= 1.5

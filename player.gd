extends RigidBody3D

@export var speed: int = 24

# Called when the node enters the scene tree for the first time.
func _ready():
	continuous_cd = true
	apply_impulse(Vector3(0,0,1)*speed)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _physics_process(delta):
	var forceDirection = Vector3(0,0,0)
	if Input.is_action_just_pressed("up"):
		forceDirection.z-=1
	if Input.is_action_just_pressed("down"):
		forceDirection.z+=1
	if Input.is_action_just_pressed("right"):
		forceDirection.x+=1
	if Input.is_action_just_pressed("left"):
		forceDirection.x-=1
	# initial push onto the ball in the forceDirection with forcePower
	apply_impulse(forceDirection*speed)

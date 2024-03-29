extends RigidBody3D

func _ready():
	var forceDirection = Vector3(randf_range(-1, 0), 0, randf_range(-1, 0))
	forceDirection = forceDirection.normalized()

	var forcePower = 1000;
	var initForce = forcePower * forceDirection

	#initial push onto the ball in the forceDirection with forcePower
	$".".apply_force(initForce)

func _physics_process(delta):
	var collidingBodies = $".".get_colliding_bodies()
	for body in collidingBodies:
		if not body.is_in_group("ground"):
			print("sphere collided with %s" % body.name)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

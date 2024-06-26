extends RigidBody3D

func _ready():
	var forceDirection = Vector3(randf_range(-1, 0), 0, randf_range(-1, 0))
	forceDirection = forceDirection.normalized()

	var forcePower = 1500;
	var initForce = forcePower * forceDirection

	#initial push onto the ball in the forceDirection with forcePower
	$".".apply_force(initForce)
	
	continuous_cd = true

func _physics_process(_delta):
	var collidingBodies = $".".get_colliding_bodies()
	for body in collidingBodies:
		if not body.is_in_group("ground"):
			$AudioStreamPlayer.play()
		if body.is_in_group("exit_hole"):
			#Game.ball_count -= 1
			queue_free()
	# applying constant force
	var myVelocity = linear_velocity.normalized()
	var forcePower = 1
	apply_force(forcePower * myVelocity)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func _exit_tree():
	Game.ball_count -= 1

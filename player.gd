extends RigidBody3D

@export var speed: int = 18

# Called when the node enters the scene tree for the first time.
func _ready():
	continuous_cd = true
	apply_impulse(Vector3(0,0,1)*speed)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _physics_process(delta):
	# collision detection
	var collidingBodies = $".".get_colliding_bodies()
	for body in collidingBodies:
		if not body.is_in_group("ground"):
			$AudioStreamPlayer.play()
		if body.is_in_group("exit_hole"):
			Game.GAME_STATE = Game.GAMESTATES.lose
			print("Player collisions")
			get_tree().change_scene_to_file("res://main_menu.tscn")
	# movments
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

extends Node3D

@export var staticCamera : Camera3D
@export var  followCamera : Camera3D
@export var  springCamera : Camera3D
@export var  orbitCamera : Camera3D
@export var  firstPersonCamera : Camera3D
@export var  splineCamera : Camera3D


enum CameraTypes {Static, follow, spring, orbit, firstPerson, spline}
@export var choice = CameraTypes.Static

# Called when the node enters the scene tree for the first time.
func _ready():
	staticCamera.current = false
	followCamera.current = false
	springCamera.current = false
	orbitCamera.current = false
	firstPersonCamera.current = false
	splineCamera.current = false
	
	if choice == CameraTypes.Static:
		staticCamera.make_current()
	if choice == CameraTypes.follow:
		followCamera.make_current()
	if choice == CameraTypes.spring:
		springCamera.make_current()
	if choice == CameraTypes.orbit:
		orbitCamera.make_current()
	if choice == CameraTypes.firstPerson:
		firstPersonCamera.make_current()
	if choice == CameraTypes.spline:
		splineCamera.make_current()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

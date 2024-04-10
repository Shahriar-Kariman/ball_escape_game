extends Camera3D

@export var target : Node3D

var path = CRSpline.new()

var index = 1
var t = 0.01
var speed = 3

func _process(delta):
	t += speed * delta
	if t >= 1.0:
		index += 1
		t = t - 1.0
	
	if (index + 2 < path.getSize ()):
		position = path.compute(index, t)
	else:
		index = 1;
	
	look_at(target.position)

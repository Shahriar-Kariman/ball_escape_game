
class_name CRSpline

var controlPoints = [Vector3(-10.0, 3.0, -6.0), \
	Vector3(-8.0, 4.0, -2.0), \
	Vector3(-6.0, 5.0, 2.0), \
	Vector3(-4.0, 6.0, 6.0), \
	Vector3(-6.0, 5.0, 8.0), \
	Vector3(-8.0, 4.0, 2.0), \
	Vector3(-10.0, 4.0, -2.0)]

func compute(start, t):
	var p0 = controlPoints[start - 1]
	var p1 = controlPoints[start]
	var p2 = controlPoints[start + 1]
	var p3 = controlPoints[start + 2]
	
	var  pos = 0.5 * ((2 * p1) + (-p0 + p2) * t + (2 * p0 - 5 * p1 + 4 * p2 - p3) * t * t + (-p0 + 3 * p1 - 3 * p2 + p3) * t * t * t)
	
	return pos

func getSize():
	return controlPoints.size()

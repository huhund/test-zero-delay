extends RigidBody3D


var physicsFrame = 0
var renderFrame = 0

func _ready():
	pass # Replace with function body.

func _physics_process(deltaTime):
	physicsFrame += 1

	if physicsFrame >= 10:
		set_linear_velocity(Vector3(10,0,0))

	force_update_transform()
	print("phys pos " + str(transform.origin) + " vel " + str(get_linear_velocity()))
	
func _process(deltaTime):
	if renderFrame != physicsFrame:
		print("rend pos " + str(transform.origin) + " vel " + str(get_linear_velocity()))

	renderFrame = physicsFrame

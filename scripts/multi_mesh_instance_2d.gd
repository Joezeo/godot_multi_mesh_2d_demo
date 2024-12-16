extends MultiMeshInstance2D

func _ready() -> void:
	var viewport = get_viewport_rect().size
	multimesh.instance_count = 100
	for i in range(0, 100):
		# 第一个参数是instance 下标
		# Transform2D(第一个参数是旋转度数，第二个参数是位置)
		multimesh.set_instance_transform_2d(i, Transform2D(0, Vector2(randf_range(0, viewport.x), randf_range(0, viewport.y))))
	

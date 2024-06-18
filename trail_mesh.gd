extends MeshInstance3D

@export var material: Material = null
@export var target_point: Vector3

func _process(delta):
	mesh.clear_surfaces()
	mesh.surface_begin(Mesh.PRIMITIVE_LINES, material)
	mesh.surface_add_vertex(position)
	mesh.surface_add_vertex(target_point)
	mesh.surface_end()   


func _on_timer_timeout():
	mesh.clear_surfaces()
	queue_free() # Replace with function body.

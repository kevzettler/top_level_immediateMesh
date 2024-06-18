extends Node3D

@export var target_point: Vector3

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var direction = target_point - position
	position += direction * 1.5 * delta

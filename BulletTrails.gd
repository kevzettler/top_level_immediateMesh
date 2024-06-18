extends Node

@export var spawn_point: Node3D = null
@export var target_point: Node3D = null

@onready var trail_scene = load("res://trail_mesh.tscn")

func _on_timer_timeout():
	var new_trail = trail_scene.instantiate()
	new_trail.target_point = target_point.global_position
	add_child(new_trail)
	new_trail.global_transform.origin = spawn_point.global_transform.origin

extends Node

@export var spawn_point: Node3D = null
@export var target_point: Node3D = null

@onready var basic_projectile_scene = load("res://basic_projectile.tscn")

func _on_timer_timeout():
	print("bullet spawn");
	var new_bullet = basic_projectile_scene.instantiate()
	new_bullet.target_point = target_point.global_position
	add_child(new_bullet)
	new_bullet.global_transform.origin = spawn_point.global_transform.origin

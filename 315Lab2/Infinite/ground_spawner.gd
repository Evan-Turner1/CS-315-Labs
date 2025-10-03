extends Node2D

var ground_scene = preload("res://Infinite/ground.tscn")

func _on_timeout() -> void:
	var new_ground = ground_scene.instantiate()
	new_ground.position = self.position
	get_node("/root/InfiniteRunner").add_child(new_ground)
	pass
	

func _on_timer_timeout() -> void:
	var new_ground = ground_scene.instantiate()
	new_ground.position = self.position
	get_node("/root/InfiniteRunner").add_child(new_ground)
	$Timer.timeout = randf_range(.2, 1.2)
	pass

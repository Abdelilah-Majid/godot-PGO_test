extends Node2D



var disable_shaders = false
export var how_many_shaders = 40

var is_stress_test_enabled = true

func _ready():
	for s in range(how_many_shaders-1):
		add_child(preload("res://scenes/shader.tscn").instance())
		get_child(s+1).position = Vector2(rand_range(0, get_viewport_rect().size.x), rand_range(0, get_viewport_rect().size.y))
	if disable_shaders:
		for s in get_child_count():
			get_child(s).visible = false
		


func _physics_process(delta):
	print("gpu_test: fps: ",Engine.get_frames_per_second())


func _on_Timer_timeout():
	if is_stress_test_enabled:
		get_tree().change_scene("res://scenes/cpu_&_gpu_test.tscn")

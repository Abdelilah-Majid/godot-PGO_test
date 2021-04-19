extends Node2D




export var how_many_sprites = 100

func _ready():
	for s in range(how_many_sprites):
		add_child(preload("res://scenes/sprite.tscn").instance())
	
	for c in get_child_count()-1:
		get_node("/root/global_script").children_pos_vec2.push_back(get_child(c+1).get_position())


func _physics_process(delta):
	print("cpu_&_gpu_test: fps: ",Engine.get_frames_per_second())


func _on_Timer_timeout():
	get_tree().quit()

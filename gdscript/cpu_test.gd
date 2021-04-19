extends Node2D


var result = 0

var time_before_one = 0.0
var total_time_one = 0.0

var time_before_all = 0.0
var total_time_all = 0.0

var average_time_one = 0.0

var average_time_all = 0.0



func _ready():
	
	
	
	for t in 7:
		
		time_before_all = OS.get_ticks_msec()
		
		for i in 10000000:
			time_before_one = OS.get_ticks_msec()
			randomize()
			result =int (100000000 * randf() + sqrt(1000000000) - randi()) % int (rand_range(1, 100000000.1234567890))
			total_time_one = OS.get_ticks_msec() - time_before_one
			average_time_one += total_time_one
		
		total_time_all = OS.get_ticks_msec() - time_before_all
		
		average_time_one /= 10000000
		
		print("cpu_test: average_time_one: ", average_time_one)
		print("cpu_test: total_time_all: ", total_time_all)
		
	
	get_tree().change_scene("res://scenes/gpu_test.tscn")






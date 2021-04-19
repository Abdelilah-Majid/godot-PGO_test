extends KinematicBody2D





func _ready():
	position = Vector2(rand_range(0, get_viewport_rect().size.x), rand_range(0, get_viewport_rect().size.y))


func _process(delta):
	
	get_node("/root/global_script").children_pos_vec2.clear()
	
	
	
	if !Input.is_action_pressed("left_mouse_button"):
		
		var last_close_node = Vector2(0, 0)
		for v in range(get_node("/root/global_script").children_pos_vec2.size()):
			if get_node("/root/global_script").children_pos_vec2[v].x > last_close_node.x:
				last_close_node.x = get_node("/root/global_script").children_pos_vec2[v].x
			
			if get_node("/root/global_script").children_pos_vec2[v].y > get_node("/root/global_script").last_close_node.y:
				last_close_node.y = get_node("/root/global_script").children_pos_vec2[v].y
		
		move_and_slide(Vector2(last_close_node.x - position.x, last_close_node.y - position.y))
	 
	if Input.is_action_pressed("left_mouse_button"):
		move_and_slide(Vector2(get_global_mouse_position().x - position.x, get_global_mouse_position().y - position.y))
	
	
	
	

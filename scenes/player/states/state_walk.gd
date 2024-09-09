extends PlayerState

func enter():
	pass

func physics_process(_delta):
	#move_4_directions()
	move_8_directions()

func set_action_direction():
	if Input.is_action_pressed('ui_left'):
		set_current_direction(player.directions.left)
		play_animation(player.animations.walk_left)
	elif Input.is_action_pressed('ui_right'):
		set_current_direction(player.directions.right)
		play_animation(player.animations.walk_right)
	elif Input.is_action_pressed('ui_up'):
		set_current_direction(player.directions.up)
		play_animation(player.animations.walk_up)
	elif Input.is_action_pressed('ui_down'):
		set_current_direction(player.directions.down)
		play_animation(player.animations.walk_down)
	else:
		state_machine.change_to(player.states._idle)
	
func move_4_directions():
	set_action_direction()
	player.urm_2d.direction_2d = player.current_direction._vector_2d
	player.urm_2d.move()

func move_8_directions():
	set_action_direction()
	var input_direction:Vector2 = Input.get_vector('ui_left', 'ui_right', 'ui_up', 'ui_down')
	player.urm_2d.direction_2d = input_direction
	player.urm_2d.move()

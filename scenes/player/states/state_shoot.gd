extends PlayerState

func enter():
	pass

func process(_delta):
	animation_shoot()

func animation_shoot():
	if Input.is_action_pressed('ui_accept'):
		match player.current_direction:
			player.directions.left:
				play_animation(player.animations.shoot_left)
			player.directions.right:
				play_animation(player.animations.shoot_right)
			player.directions.up:
				play_animation(player.animations.shoot_up)
			player.directions.down:
				play_animation(player.animations.shoot_down)
			_:
				play_animation(player.animations.shoot_none)
	else:
		await get_tree().create_timer(0.5).timeout
		state_machine.change_to(player.states._idle)

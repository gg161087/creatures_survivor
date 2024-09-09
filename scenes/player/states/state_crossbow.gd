extends PlayerState

func enter():
	pass

func process(_delta):
	animation_crossbow()

func animation_crossbow():
	if Input.is_action_pressed('ui_cancel'):
		match player.current_direction:
			player.directions.left:
				play_animation(player.animations.crossbow_left)
			player.directions.right:
				play_animation(player.animations.crossbow_right)
			player.directions.up:
				play_animation(player.animations.crossbow_up)
			player.directions.down:
				play_animation(player.animations.crossbow_down)
			_:
				play_animation(player.animations.crossbow_none)
	else:
		state_machine.change_to(player.states._idle)

extends CharacterBody2D
class_name Player

@onready var urm_2d: URM2D = $URM2D

@onready var state_machine: StateMachine = $StateMachine
var states:PlayerStates = PlayerStates.new()

@onready var animation_player: AnimationPlayer = $AnimationPlayer
var animations:PlayerAnimations = PlayerAnimations.new()
@export var currect_animation:String = animations.idle_none

var directions:PlayerDirections = PlayerDirections.new()
@export var current_direction:PlayerDirection = directions.none

func _ready() -> void:
	pass

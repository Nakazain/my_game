class_name State_Walk extends State

@export var move_speed: float = 100.0

@onready var idle: State = $"../Idle"

func Enter() -> void:
	player.UpdateAnimation("walk")
	pass
	
func Exit() -> void:
	pass

func Process( _delta : float ) -> State:
	if player.direction == Vector2.ZERO:
		return idle

	if player.SetDirection():
		player.UpdateAnimation("walk")
	
	player.velocity = player.direction * move_speed
	
	
	return null


func Physics( _delta : float ) -> State:
	return null

func HandleInput(_event: InputEvent) -> State:
	return null

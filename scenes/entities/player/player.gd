extends CharacterBody2D


@export_category("stats")
@export var speed: int = 400

var move_direction: Vector2 = Vector2.ZERO

func _physics_process(delta: float) -> void:
	movement_loop()
	
func movement_loop() -> void:
	move_direction.x = int(Input.is_action_just_pressed("right")) - int(Input.is_action_just_pressed("left"))
	move_direction.y = int(Input.is_action_just_pressed("down")) - int(Input.is_action_just_pressed("up"))
	var motion: Vector2 = move_direction.normalized() * speed
	set_velocity(motion)
	move_and_slide()

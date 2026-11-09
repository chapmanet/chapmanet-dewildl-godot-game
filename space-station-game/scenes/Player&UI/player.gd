extends CharacterBody2D

const SPEED = 150.0
@onready var sprite: AnimatedSprite2D = $AnimatedSprite2D


func _physics_process(delta: float) -> void:
	velocity += get_gravity() * delta
	# Get the input direction and handle the movement/deceleration.
	var directionx := Input.get_axis("left", "right")
	if directionx:
		velocity.x = directionx * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	var directiony := Input.get_axis("up", "down")
	if directiony:
		velocity.y = directiony * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)
	
	if directionx > 0:
		sprite.play("WalkRight")
	elif directionx < 0:
		sprite.play("WalkLeft")
	elif directiony < 0 and directionx == 0:
		sprite.play("WalkUp")
	elif directiony > 0 and directionx == 0:
		sprite.play("WalkDown")
	else:
		sprite.play("Idle")

	move_and_slide()

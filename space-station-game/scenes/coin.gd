extends Area2D

var touching = 0

func _on_body_entered(body: Node2D, touching):
	touching = 1
	if Input.is_action_pressed("interact"):
		queue_free()
		print("Coin collected")

func _on_body_exited(body: Node2D, touching):
	touching = 0
	return touching

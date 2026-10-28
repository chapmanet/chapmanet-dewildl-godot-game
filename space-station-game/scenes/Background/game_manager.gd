extends Node

var score = 0

func increase_score():
	score += 1
	EventBus.score_updated.emit(score)
	print(score)
	if score == 3:
		print("You have found all coins!")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	EventBus.coin_collected.connect(increase_score)

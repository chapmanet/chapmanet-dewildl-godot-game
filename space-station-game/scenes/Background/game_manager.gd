extends Node

var score = 0
var level = 0

func return_to_station():
	pass


func change_level():
	level += 1
	EventBus.level_updated.emit(level)
	print("Level:" + level)


func increase_score():
	score += 1
	EventBus.score_updated.emit(score)
	print(score)
	if score == 3:
		print("You have found all coins!")
		return_to_station()
		change_level()


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	EventBus.coin_collected.connect(increase_score)
	EventBus.level_updated.connect(change_level)

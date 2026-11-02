extends Node

var score = 0
var level = 0


func change_level():
	level += 1
	EventBus.level_updated.emit(level)
	print(level)
	if level == 1:
		pass
	if level == 2:
		pass
	if level == 3:
		pass
	if level == 4:
		pass
	if level == 5:
		pass
	if level == 6:
		pass
	if level == 7:
		pass
	if level == 8:
		pass
	if level == 9:
		pass
	if level == 10:
		pass
	


func increase_score():
	score += 1
	EventBus.score_updated.emit(score)
	print(score)
	if score == 3:
		print("You have found all coins!")
		change_level()


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	EventBus.coin_collected.connect(increase_score)
	EventBus.level_updated.connect(change_level)

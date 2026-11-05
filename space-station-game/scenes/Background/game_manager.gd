extends Node

var score = 0
var level = 0


func change_level():
	score = 0
	level += 1
	EventBus.level_updated.emit(level)
	EventBus.score_updated.emit(score)
	print(level)
	if level == 1:
		$"../Player".set_position($"../Levels/DestinationPoint1".global_position)
		$"../GameUI".show()
	if level == 2:
		$"../Player".set_position($"../Levels/DestinationPoint2".global_position)
		$"../GameUI".hide()
	if level == 3:
		$"../Player".set_position($"../Levels/DestinationPoint3".global_position)
		$"../GameUI".show()
	if level == 4:
		$"../Player".set_position($"../Levels/DestinationPoint4".global_position)
		$"../GameUI".hide()
	if level == 5:
		$"../Player".set_position($"../Levels/DestinationPoint5".global_position)
	if level == 6:
		$"../Player".set_position($"../Levels/DestinationPoint6".global_position)
		$"../GameUI".show()
	if level == 7:
		$"../Player".set_position($"../Levels/DestinationPoint7".global_position)
		$"../GameUI".hide()
	if level == 8:
		$"../Player".set_position($"../Levels/DestinationPoint8".global_position)
		$"../GameUI".show()
	if level == 9:
		$"../Player".set_position($"../Levels/DestinationPoint9".global_position)
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
	EventBus.level_switched.connect(change_level)
	$"../GameUI".hide()

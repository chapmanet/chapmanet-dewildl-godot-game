extends CanvasLayer

@onready var coin_number: Label = $CoinsCount/CoinNumber

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	EventBus.score_updated.connect(update_score)

func update_score(score):
	coin_number.text = str(score)

class_name ScoreLabel extends Label

func _ready() -> void:
	GameManager.on_score_change.connect(update_score)
	update_score()

func update_score() -> void:
	text = str(GameManager.score)

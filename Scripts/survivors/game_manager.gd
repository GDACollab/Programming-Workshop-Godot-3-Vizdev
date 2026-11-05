extends Node
var player: SurvivorsPlayer
var score: int = 0

signal on_score_change(float)

func set_player(p: SurvivorsPlayer) -> void:
	self.player = p

func increment_score() -> void:
	score += 1
	print("Score: ", score)
	on_score_change.emit()

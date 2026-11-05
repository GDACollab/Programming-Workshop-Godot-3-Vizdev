class_name EntityAnimationPlayer extends AnimationPlayer

@export var entity: SurvivorsEntity = null

func _ready() -> void:
	entity.on_death.connect(play_death_anim)

func death_anim_finished() -> void:
	print("HELLO!!")
	entity.destroy()

func play_death_anim() -> void:
	print("WE DIED")
	play("die")

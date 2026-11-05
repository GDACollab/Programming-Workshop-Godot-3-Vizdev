class_name DamageParticles extends CPUParticles2D

func start_emitting() -> void:
	emitting = true

func _on_finished() -> void:
	queue_free()

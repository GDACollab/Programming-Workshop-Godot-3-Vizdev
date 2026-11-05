class_name DamageParticlesSpawner extends Node2D

var damage_particles_scene = preload("res://Scenes/Survivors Stuff/Damage Particles/damage_particles.tscn")

@export var entity: SurvivorsEntity = null

func _ready() -> void:
	if entity != null:
		entity.on_hurt.connect(spawn_particles.unbind(1))

func spawn_particles() -> void:
	var damage_particles = damage_particles_scene.instantiate()
	add_child(damage_particles)
	damage_particles.start_emitting()
	

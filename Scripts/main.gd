extends Node


const SPEED : int = 0.1

@onready var ICON : Sprite2D = $Icon

# Task 3,4,5 Sprite2D movement with vector normalization and movement speed related to game running speed
func _process(delta: float) -> void:
	var inp_vec = Input.get_vector("left","right", "up", "down").normalized()
	ICON.position += inp_vec * SPEED * delta

#func _physics_process(delta: float) -> void:
#	var inp_vec = Input.get_vector("left","right", "up", "down").normalized()
#	ICON.position += inp_vec * SPEED * delta

extends Node
class_name HealthBarInstance

@export var max: int
var value0: int
var value1: int
var target_value: int

func _ready() -> void:
	value0 = max
	value1 = max
	
func _process(delta: float) -> void:
	pass
	
func damage_taken(damage: int):
	pass

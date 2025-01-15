extends Node

var points = 0
@onready var points_label: Label = %PointsLabel

func add_point():
	points += 1
	points_label.text = "Points: " + str(points)


func _on_retry_pressed() -> void:
	get_tree().reload_current_scene()
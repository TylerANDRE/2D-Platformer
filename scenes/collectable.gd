extends Area2D

@onready var game_manager: Node = %GameManager


func _on_body_entered(body: Node2D) -> void:
	if (body.name == "Main_character"):
		queue_free()
		AudioController.play_pickup_fruit()
		game_manager.add_point()

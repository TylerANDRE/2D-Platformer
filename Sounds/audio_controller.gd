extends Node2D

@export var mute:bool = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if not mute:
		play_music()
		
func play_music():
	if not mute:
		$Music.play()
		
func play_jump():
	if not mute:
		$Jump.play()
		
func play_pickup_fruit():
	if not mute:
		$PickupFruit.play()
		
func play_level_end():
	if not mute:
		$Music.stop()
		$LevelEnd.play()

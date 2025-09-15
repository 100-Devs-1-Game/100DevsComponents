extends Node2D

@export var main_scene: PackedScene

@onready var splash_screen: SplashScreen = $Splash_Screen


func _on_splash_screen_finished() -> void:
	splash_screen.queue_free()
	get_tree().change_scene_to_packed.call_deferred(main_scene)

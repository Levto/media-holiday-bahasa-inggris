extends AnimatedSprite


func _ready():
	frame = 0
	playing = true


func _on_OutOverlay_animation_finished():
	get_tree().change_scene("res://Display Scenes/" + Global.nextScene + ".tscn")

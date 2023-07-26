extends AnimatedSprite


func _ready():
	visible = true
	frame = 0
	playing = true


func _on_InOverlay_animation_finished():
	queue_free()

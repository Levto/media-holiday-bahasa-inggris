extends TextureButton

export(String) var targetScene = ""

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_BackButton_button_down():
	Global.nextScene = targetScene
	Global.outOverlay()

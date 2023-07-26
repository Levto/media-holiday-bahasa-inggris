extends Sprite

export(String) var spotName

func _ready():
	texture = load("res://Sprites/Buttons/Spot Buttons/" + spotName + "Normal.png")
	$TextureButton.texture_normal = load("res://Sprites/Buttons/Spot Buttons/" + spotName + "Normal.png")
	$TextureButton.texture_pressed = load("res://Sprites/Buttons/Spot Buttons/" + spotName + "Normal.png")
	$TextureButton.texture_hover = load("res://Sprites/Buttons/Spot Buttons/" + spotName + "Hover.png")


func _on_TextureButton_button_down():
	pass

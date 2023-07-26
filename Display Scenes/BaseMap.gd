extends Control

export(ButtonGroup) var mapLocationButton

onready var camPosition = $CamPosition
onready var cameraNode = $CamPosition/Cam0
onready var infoOverlay = $CanvasLayer/InfoOverlay
onready var backToMapButton = $CanvasLayer/BackToMap
onready var backButton = $CanvasLayer/BackButton
onready var title = $CanvasLayer/Title
onready var audioButton = $CanvasLayer/Audio
onready var audioStream = $AudioStreamPlayer

onready var spotName = $CanvasLayer/InfoOverlay/MarginContainer/VBoxContainer/Name
onready var spotTranslate = $CanvasLayer/InfoOverlay/MarginContainer/VBoxContainer/Translate
onready var activityPicture = $CanvasLayer/InfoOverlay/MarginContainer/VBoxContainer/ActivityPicture
onready var activity = $CanvasLayer/InfoOverlay/MarginContainer/VBoxContainer/Activity1
onready var activityTranslate = $CanvasLayer/InfoOverlay/MarginContainer/VBoxContainer/Translate2

# Declare member variables here. Examples:
# var a = 2
var deltaTime

# Called when the node enters the scene tree for the first time.
func _ready():
	infoOverlay.visible = false
	backToMapButton.visible = false
	backButton.visible = true
	audioButton.visible = false
	
	camPosition.position = get_viewport_rect().size/2
	
	for i in mapLocationButton.get_buttons():
		i.connect("button_down", self, "location_pressed")

	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	deltaTime = delta

func location_pressed():
	#load resources for information display
	Global.selectedSpot = mapLocationButton.get_pressed_button().get_parent().spotName
	var selectedSpot = Global.selectedSpot
	spotName.text = selectedSpot
	spotTranslate.text = Global.spotData[selectedSpot].translate
	activityPicture.texture = load("res://Sprites/Activity/" + Global.spotData[selectedSpot].activity + ".png")
	if Global.spotData[selectedSpot].activity == "SwimmingA" or Global.spotData[selectedSpot].activity == "SwimmingB":
		activity.text = "Swimming"
	else:
		activity.text = Global.spotData[selectedSpot].activity
	activityTranslate.text = Global.spotData[selectedSpot].activiyTranslate
	
	var buttonPressed = mapLocationButton.get_pressed_button()
	camPosition.position = buttonPressed.get_parent().position
	#$camPosition.position.x += buttonPressed.get_parent().texture.get_size().x
	cameraNode.zoom = Vector2(0.4, 0.4)
	camPosition.position.x += (get_viewport_rect().size.x/2) * 0.2
	infoOverlay.visible = true
	audioButton.visible = true
	backToMapButton.visible = true
	backButton.visible = false
	title.visible = false
	
	for i in mapLocationButton.get_buttons():
		i.disabled = true
	
	#play audio on spot click
	audioStream.stream = load("res://Audio/Holiday Spots/" + Global.selectedSpot + ".wav")
	audioStream.play()
	
func _on_Button_button_down():
	camPosition.position = get_viewport_rect().size/2
	cameraNode.zoom = Vector2.ONE
	infoOverlay.visible = false
	audioButton.visible = false
	backToMapButton.visible = false
	backButton.visible = true
	title.visible = true
	for i in mapLocationButton.get_buttons():
		i.disabled = false


func _on_Audio_button_down():
	audioStream.stream = load("res://Audio/Holiday Spots/" + Global.selectedSpot + ".wav")
	audioStream.play()

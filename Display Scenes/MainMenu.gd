extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Explore_button_down():
	Global.nextScene = "AreaSelect"
	Global.outOverlay()


func _on_Lesson_button_down():
	Global.nextScene = "LessonMenu"
	Global.outOverlay()


func _on_Help_button_down():
	Global.nextScene = "Help"
	Global.outOverlay()


func _on_About_button_down():
	Global.nextScene = "About"
	Global.outOverlay()

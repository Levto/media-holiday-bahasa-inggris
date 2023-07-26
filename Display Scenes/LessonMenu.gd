extends Control

export (ButtonGroup) var lessonButtons
onready var onetoThree = $LessonButtons/OnetoThree
onready var fourtoSix = $LessonButtons/FourtoSix

func _ready():
	onetoThree.visible = true
	fourtoSix.visible = false
	$Next.visible = true
	$Previous.visible = false


func _on_Next_button_down():
	onetoThree.visible = false
	fourtoSix.visible = true
	$Next.visible = false
	$Previous.visible = true


func _on_Previous_button_down():
	onetoThree.visible = true
	fourtoSix.visible = false
	$Next.visible = true
	$Previous.visible = false


func _on_One_button_down():
	Global.nextScene = "LessonOne"
	Global.outOverlay()


func _on_Two_button_down():
	Global.nextScene = "LessonTwo"
	Global.outOverlay()


func _on_Three_button_down():
	Global.nextScene = "LessonThree"
	Global.outOverlay()


func _on_Four_button_down():
	Global.nextScene = "LessonFour"
	Global.outOverlay()


func _on_Five_button_down():
	Global.nextScene = "LessonFive"
	Global.outOverlay()


func _on_Six_button_down():
	Global.nextScene = "LessonSix"
	Global.outOverlay()

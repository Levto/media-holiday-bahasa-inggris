extends Control

onready var lessonContent1 = $MarginContainer/Main/LessonContent1
onready var lessonContent2 = $MarginContainer/Main/LessonContent2
onready var exampleContent = $MarginContainer/Main/ExampleContent
onready var exerciseContent = $MarginContainer/Main/ExerciseContent
onready var audioStream = $AudioStreamPlayer
onready var prevButton = $LessonNavButton/Prev
onready var nextButton = $LessonNavButton/Next

func _ready():
	lessonContent1.visible = true
	lessonContent2.visible = false
	nextButton.visible = true
	prevButton.visible = false
	exampleContent.visible = false
	exerciseContent.visible = false


func _on_Lesson_button_down():
	lessonContent1.visible = true
	lessonContent2.visible = false
	exampleContent.visible = false
	exerciseContent.visible = false
	nextButton.visible = true
	prevButton.visible = false
	
	if audioStream.playing:
		audioStream.stream = null


func _on_Example_button_down():
	lessonContent1.visible = false
	lessonContent2.visible = false
	exampleContent.visible = true
	exerciseContent.visible = false
	nextButton.visible = false
	prevButton.visible = false


func _on_Exercise_button_down():
	lessonContent1.visible = false
	lessonContent2.visible = false
	exampleContent.visible = false
	exerciseContent.visible = true
	nextButton.visible = false
	prevButton.visible = false
	
	if audioStream.playing:
		audioStream.stream = null


func _on_Audio_button_down():
	if audioStream.playing:
		audioStream.stream = null
	else:
		audioStream.stream = load("res://Audio/Lesson Examples/Lesson 4.wav")
		audioStream.play()


func _on_Prev_button_down():
	lessonContent1.visible = true
	lessonContent2.visible = false
	nextButton.visible = true
	prevButton.visible = false


func _on_Next_button_down():
	lessonContent1.visible = false
	lessonContent2.visible = true
	nextButton.visible = false
	prevButton.visible = true

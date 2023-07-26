extends Control

onready var lessonContent1 = $MarginContainer/Main/LessonContent1
onready var lessonContent2 = $MarginContainer/Main/LessonContent2
onready var exampleContent = $MarginContainer/Main/ExampleContent
onready var exerciseContent = $MarginContainer/Main/ExerciseContent
onready var audioStream = $AudioStreamPlayer
onready var nextButton = $LessonNavButton/Next
onready var prevButton = $LessonNavButton/Prev

	#if audioStream.playing:
	#	audioStream.stream = null
	#else:
	#	audioStream.stream = load("res://Audio/Lesson Examples/Lesson 1.wav")
	#	audioStream.play()

func _ready():
	lessonContent1.visible = true
	exampleContent.visible = false
	exerciseContent.visible = false
	lessonContent2.visible = false
	prevButton.visible = false
	nextButton.visible = true


func _on_Lesson_button_down():
	exampleContent.visible = false
	exerciseContent.visible = false
	lessonContent1.visible = true
	lessonContent2.visible = false
	prevButton.visible = false
	nextButton.visible = true
	
	if audioStream.playing:
		audioStream.stream = null

func _on_Example_button_down():
	lessonContent1.visible = false
	exampleContent.visible = true
	exerciseContent.visible = false
	lessonContent2.visible = false
	prevButton.visible = false
	nextButton.visible = false

func _on_Exercise_button_down():
	lessonContent1.visible = false
	exampleContent.visible = false
	exerciseContent.visible = true
	lessonContent2.visible = false
	prevButton.visible = false
	nextButton.visible = false
	
	if audioStream.playing:
		audioStream.stream = null

func _on_TextureButton_button_down():
	if audioStream.playing:
		audioStream.stream = null
	else:
		audioStream.stream = load("res://Audio/Lesson Examples/Lesson 1.wav")
		audioStream.play()


func _on_Prev_button_down():
	lessonContent1.visible = true
	lessonContent2.visible = false
	prevButton.visible = false
	nextButton.visible = true


func _on_Next_button_down():
	lessonContent1.visible = false
	lessonContent2.visible = true
	prevButton.visible = true
	nextButton.visible = false


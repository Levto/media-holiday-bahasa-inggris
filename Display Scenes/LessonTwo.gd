extends Control

onready var lessonContent = $MarginContainer/Main/LessonContent
onready var exampleContent = $MarginContainer/Main/ExampleContent
onready var exerciseContent = $MarginContainer/Main/ExerciseContent
onready var audioStream = $AudioStreamPlayer

func _ready():
	lessonContent.visible = true
	exampleContent.visible = false
	exerciseContent.visible = false


func _on_Lesson_button_down():
	lessonContent.visible = true
	exampleContent.visible = false
	exerciseContent.visible = false
	
	if audioStream.playing:
		audioStream.stream = null


func _on_Example_button_down():
	lessonContent.visible = false
	exampleContent.visible = true
	exerciseContent.visible = false


func _on_Exercise_button_down():
	lessonContent.visible = false
	exampleContent.visible = false
	exerciseContent.visible = true
	
	if audioStream.playing:
		audioStream.stream = null


func _on_Audio1_button_down():
	if audioStream.playing and audioStream.stream.resource_path == "res://Audio/Lesson Examples/Lesson 2-1.wav":
		audioStream.stream = null
	else:
		audioStream.stream = load("res://Audio/Lesson Examples/Lesson 2-1.wav")
		audioStream.play()


func _on_Audio2_button_down():
	if audioStream.playing and audioStream.stream.resource_path == "res://Audio/Lesson Examples/Lesson 2-2.wav":
		audioStream.stream = null
	else:
		audioStream.stream = load("res://Audio/Lesson Examples/Lesson 2-2.wav")
		audioStream.play()


func _on_Audio3_button_down():
	if audioStream.playing and audioStream.stream.resource_path == "res://Audio/Lesson Examples/Lesson 2-3.wav":
		audioStream.stream = null
	else:
		audioStream.stream = load("res://Audio/Lesson Examples/Lesson 2-3.wav")
		audioStream.play()


func _on_Audio4_button_down():
	if audioStream.playing and audioStream.stream.resource_path == "res://Audio/Lesson Examples/Lesson 2-4.wav":
		audioStream.stream = null
	else:
		audioStream.stream = load("res://Audio/Lesson Examples/Lesson 2-4.wav")
		audioStream.play()


func _on_Audio5_button_down():
	if audioStream.playing and audioStream.stream.resource_path == "res://Audio/Lesson Examples/Lesson 2-5.wav":
		audioStream.stream = null
	else:
		audioStream.stream = load("res://Audio/Lesson Examples/Lesson 2-5.wav")
		audioStream.play()

func _on_Audio6_button_down():
	if audioStream.playing and audioStream.stream.resource_path == "res://Audio/Lesson Examples/Lesson 2-6.wav":
		audioStream.stream = null
	else:
		audioStream.stream = load("res://Audio/Lesson Examples/Lesson 2-6.wav")
		audioStream.play()

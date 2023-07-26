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

func _on_TextureButton_button_down():
	if audioStream.playing and audioStream.stream.resource_path == "res://Audio/Lesson Examples/Lesson 3-1.wav":
		audioStream.stream = null
	else:
		audioStream.stream = load("res://Audio/Lesson Examples/Lesson 3-1.wav")
		audioStream.play()


func _on_TextureButton2_button_down():
	if audioStream.playing and audioStream.stream.resource_path == "res://Audio/Lesson Examples/Lesson 3-2.wav":
		audioStream.stream = null
	else:
		audioStream.stream = load("res://Audio/Lesson Examples/Lesson 3-2.wav")
		audioStream.play()

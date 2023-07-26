extends Control

onready var lessonContent = $MarginContainer/Main/LessonContent
onready var exampleContent = $MarginContainer/Main/ExampleContent
onready var exerciseContent = $MarginContainer/Main/ExerciseContent
onready var audioStream = $AudioStreamPlayer


var blankA = "_____"
var blankB = "_____"
var blankC = "_____"
var blankD = "_____"
var blankE = "_____"

func _ready():
	lessonContent.visible = true
	exampleContent.visible = false
	exerciseContent.visible = false
	
func _process(delta):
	exampleContent.bbcode_text = "[b]Read the following story and fill in the blanks with the words below![/b][center]Tony and his family " + blankA + " to cinema in the last holiday. They " + blankB + " a superhero movie. The movie was very " + blankC + ". Tony " + blankD + " a big pop corn. They had a lot of " + blankE + " in the holiday."

func _on_Lesson_button_down():
	lessonContent.visible = true
	exampleContent.visible = false
	exerciseContent.visible = false
	
	if audioStream.playing:
		audioStream.stream = null


func _on_Example_button_down():
	blankA = "_____"
	blankB = "_____"
	blankC = "_____"
	blankD = "_____"
	blankE = "_____"
	lessonContent.visible = false
	exampleContent.visible = true
	exerciseContent.visible = false

func _on_Exercise_button_down():
	lessonContent.visible = false
	exampleContent.visible = false
	exerciseContent.visible = true
	
	if audioStream.playing:
		audioStream.stream = null



func _on_a_button_down():
	blankC = "[color=yellow]interesting[/color]"


func _on_a2_button_down():
	blankB = "[color=yellow]watched[/color]"


func _on_a3_button_down():
	blankD = "[color=yellow]bought[/color]"


func _on_a4_button_down():
	blankA = "[color=yellow]went[/color]"


func _on_a5_button_down():
	blankE = "[color=yellow]fun[/color]"


func _on_Audio_button_down():
	if audioStream.playing:
		audioStream.stream = null
	else:
		audioStream.stream = load("res://Audio/Lesson Examples/Lesson 5.wav")
		audioStream.play()

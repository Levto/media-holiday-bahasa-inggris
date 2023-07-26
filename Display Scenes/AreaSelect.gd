extends Control


func _ready():
	pass


func _on_City_button_down():
	Global.nextScene = "CityMap"
	Global.outOverlay()


func _on_Nature_button_down():
	Global.nextScene = "NatureMap"
	Global.outOverlay()

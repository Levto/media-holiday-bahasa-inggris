extends Node

var nextScene = ""

var selectedSpot = ""

var spotData = {
	"Swimming Pool": {
		"translate": "Kolam Renang",
		"activity": "SwimmingB",
		"activiyTranslate": "(Berenang)"
	},
	"Cinema": {
		"translate": "Bioskop",
		"activity": "Watch Movie",
		"activiyTranslate": "(Menonton Film)"
	},
	"Mall": {
		"translate": "Pusat Perbelanjaan",
		"activity": "Shopping",
		"activiyTranslate": "(Belanja)"
	},
	"Museum": {
		"translate": "Museum",
		"activity": "Seeing The Exhibition",
		"activiyTranslate": "(Melihat Pameran)"
	},
	"City Park": {
		"translate": "Taman Kota",
		"activity": "Strolling",
		"activiyTranslate": "(Jalan-jalan)"
	},
	"Home": {
		"translate": "Rumah",
		"activity": "Stay at Home",
		"activiyTranslate": "(Tetap di Rumah)"
	},
	"Beach": {
		"translate": "Pantai",
		"activity": "SwimmingA",
		"activiyTranslate": "(Berenang)"
	},
	"River": {
		"translate": "Sungai",
		"activity": "Rafting",
		"activiyTranslate": "(Arung Jeram)"
	},
	"Lake": {
		"translate": "Danau",
		"activity": "Fishing",
		"activiyTranslate": "(Memancing)"
	},
	"Waterfall": {
		"translate": "Air Terjun",
		"activity": "Viewing Scenery",
		"activiyTranslate": "(Melihat Pemandangan)"
	},
	"Forest": {
		"translate": "Hutan",
		"activity": "Camping",
		"activiyTranslate": "(Berkemah)"
	},
	"Mountain": {
		"translate": "Gunung",
		"activity": "Hiking",
		"activiyTranslate": "(Mendaki)"
	}
}

func _ready():
	pass

func outOverlay():
	var outOverlayScene = load("res://Object Scenes/OutOverlay.tscn")
	var outOverlayNode = outOverlayScene.instance()
	get_tree().current_scene.add_child(outOverlayNode)

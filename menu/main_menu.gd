extends Node2D
class_name MainMenu

const JOIN1 = "j0in"
const JOIN2 = "game!1"
const A_GO = "(A) ok"
const B_CANCEL = "(B) cancel"
const Y_SCORES = "(Y) scores"
const READY1 = "ready??"
const READYA1 = "press (A)!"
const READY2 = "READY!!!1"
const IMADEAGAME = "I MAED A GAM3 W1TH"
const ZOMBIESINIT = "Z0MMBIES 1N IT!!!1"
const TWINSTICKSHOOTER = "(IT'S A TWIN STICK SH00T3R)"


enum PlayerState {
	OUT,
	IN,
	READY
}


var _title1: TextString
var _title2: TextString
var _subtitle: TextString


func _ready():
	_title1 = Text.get_string(IMADEAGAME, Vector2(640.0, 100.0), 12.0, Color.white, Text.Justify.CENTER, true)
	_title2 = Text.get_string(ZOMBIESINIT, Vector2(640.0, 200.0), 12.0, Color.white, Text.Justify.CENTER, true)
	_subtitle = Text.get_string(TWINSTICKSHOOTER, Vector2(640.0, 300.0), 6.0, Color.white, Text.Justify.CENTER, true)
	_subtitle.visible = false
	add_child(_title1)
	add_child(_title2)
	add_child(_subtitle)

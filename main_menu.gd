extends Control
class_name Game
enum GAMESTATES {begin, playing, win, lose}

static var GAME_STATE = GAMESTATES.begin
static var ball_count = 4

func _ready():
	if GAME_STATE == GAMESTATES.begin:
		$PanelContainer/MarginContainer/VBoxContainer/Title.text = "Lets play with some balls!"
	elif GAME_STATE == GAMESTATES.win:
		$PanelContainer/MarginContainer/VBoxContainer/Title.text = "You Win!!!"
	elif GAME_STATE == GAMESTATES.lose:
		$PanelContainer/MarginContainer/VBoxContainer/Title.text = "You Lose!!!"

#for starting
func _on_start_pressed():
	Game.GAME_STATE = Game.GAMESTATES.playing
	ball_count = 4
	get_tree().change_scene_to_file("res://main.tscn")

#for quitting
func _on_quit_pressed():
	get_tree().quit()

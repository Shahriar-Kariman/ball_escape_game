extends Control
class_name Game
enum GAMESTATES {begin, plaing, win, lose}

static var GAME_STATE = GAMESTATES.begin

func _ready():
	if GAME_STATE == GAMESTATES.begin:
		$PanelContainer/MarginContainer/VBoxContainer/Title.text = "Lets play with some balls!"
	elif GAME_STATE == GAMESTATES.win:
		$PanelContainer/MarginContainer/VBoxContainer/Title.text = "You Win!!!"
		$PanelContainer/MarginContainer/VBoxContainer/StartButton.visible = false
		$PanelContainer/MarginContainer/VBoxContainer/QuitGame.visible = false
	elif GAME_STATE == GAMESTATES.lose:
		$PanelContainer/MarginContainer/VBoxContainer/Title.text = "You Lose!!!"
		$PanelContainer/MarginContainer/VBoxContainer/StartButton.visible = false
		$PanelContainer/MarginContainer/VBoxContainer/QuitGame.visible = false
#for starting
func _on_start_pressed():
	get_tree().change_scene_to_file("res://main.tscn")

#for quitting
func _on_quit_pressed():
	get_tree().quit()

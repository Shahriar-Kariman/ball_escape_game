extends Node3D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Game.ball_count < 1:
		Game.GAME_STATE = Game.GAMESTATES.win
		get_tree().change_scene_to_file("res://main_menu.tscn")

func _on_game_boundry_body_exited(body):
	body.queue_free()

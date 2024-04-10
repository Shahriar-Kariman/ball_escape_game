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
	#if body.is_in_group("balls"):
	Game.ball_count -= 1
	#if body.is_in_group("player"):
		#Game.GAME_STATE = Game.GAMESTATES.lose
		#print("_on_game_body_exited")
		#get_tree().change_scene_to_file("res://main_menu.tscn")
	body.queue_free()

extends Node3D

var ball_count = 8

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if ball_count == 0:
		Game.GAME_STATE = Game.GAMESTATES.win

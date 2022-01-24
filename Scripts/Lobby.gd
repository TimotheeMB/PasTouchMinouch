extends Control

func _ready():
	get_tree().connect("connected_to_server", self, "connected")

func connected():
	#print("CONNECTED")
	rpc("begin_game")
	begin_game()

remote func begin_game():
	get_tree().change_scene("res://Scenes/Game.tscn")

 
func _on_Host_pressed():
	pass # Replace with function body.


func _on_Join_pressed():
	pass # Replace with function body.

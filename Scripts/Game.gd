extends Node2D

func _ready():
	get_tree().connect("network_peer_connected",self,"create_player")
	if Net.is_host:
		create_player(get_tree().get_network_unique_id())
func create_players():
	for id in Net.peer_ids:
		create_player(id)
	create_player(Net.net_id)

func create_player(id):
	#print("Player with ID " + str(id) + " initialized")
	var p = preload("res://Scenes/Player.tscn").instance()
	add_child(p)
	p.initialize(id)


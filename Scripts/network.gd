extends Node

const RPC_PORT = 31400
const MAX_PLAYERS = 10

var net_id = null
var is_host = false
var peer_ids = []

func initialize_server():
	is_host = true
	var peer = NetworkedMultiplayerENet.new()
	peer.create_server(RPC_PORT, MAX_PLAYERS)
	get_tree().network_peer = peer
	#print("initialized as host")

func initialize_client(server_ip):
	var peer = NetworkedMultiplayerENet.new()
	peer.create_client(server_ip, RPC_PORT)
	get_tree().network_peer = peer
	#print("initialized as client")

func set_ids():
	net_id = get_tree().get_network_unique_id()
	peer_ids = get_tree().get_network_connected_peers()
	#print("ID is " + str(net_id) + " and peer IDs are " + str(peer_ids))

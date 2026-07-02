extends Node3D

@onready var parent: Node3D = $Node3D

func returnFieldDict() -> Dictionary[String, Node3D]:
	var dict: Dictionary[String, Node3D]
	for tile: Node3D in parent.get_children():
		dict.set(tile.name, tile)
	return dict

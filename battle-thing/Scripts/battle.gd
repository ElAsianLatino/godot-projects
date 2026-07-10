extends Node3D


@export var player_scene: PackedScene
@onready var field_tiles: Dictionary = $Field.return_field_dict()

func _ready() -> void:
	var player_instance = player_scene.instantiate()
	var center_tile: Node3D = field_tiles["5"]
	self.add_child(player_instance)
	player_instance.global_position = Vector3(center_tile.global_position.x, .1, center_tile.global_position.z)

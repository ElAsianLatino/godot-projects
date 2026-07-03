extends Control


@onready var sub_viewport: SubViewport = $SubViewport
@onready var scaler: TextureRect = $SubViewportScaler

func _ready() -> void:
	scaler.texture = sub_viewport.get_texture()

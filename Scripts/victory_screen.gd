extends Node2D


@export var menu_scene: PackedScene = preload("res://Scenes/Menu.tscn")

func _ready():
	var start_button = get_node("BackButton")
	start_button.connect("pressed", Callable(self, "_on_start_pressed"))

func _on_back_button_pressed():
	var root = get_tree().get_root()
	root.add_child(menu_scene.instantiate())
	root.remove_child(self)
	self.queue_free()

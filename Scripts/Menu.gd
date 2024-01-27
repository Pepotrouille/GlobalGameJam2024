extends Node2D

@export var game_scene: PackedScene = preload("res://Scenes/Game.tscn")
@export var credit_scene: PackedScene = preload("res://Scenes/Credits.tscn")

func _ready():
	var game_button = get_node("StartButton")
	game_button.connect("pressed", Callable(self, "_on_start_button_pressed"))
	var credit_button = get_node("CreditButton")
	credit_button.connect("pressed", Callable(self, "_on_credits_button_pressed"))

func _on_start_button_pressed():
	var root = get_tree().get_root()
	root.add_child(game_scene.instantiate())
	root.remove_child(self)
	self.queue_free()

func _on_start_button_mouse_entered():
	$HoverButton.play()

func _on_credit_button_pressed():
	var root = get_tree().get_root()
	root.add_child(credit_scene.instantiate())
	root.remove_child(self)
	self.queue_free()

func _on_credit_button_mouse_entered():
	$HoverButton.play()

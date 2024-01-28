extends Node

class_name Game

enum TYPE_OBJECTS {NONE, FLEUR, TOURNE_DISQUE, CROCS}

var game_is_finished = false
var timer = 0
const TIMER_MAX = 70

@export var victory_scene: PackedScene = preload("res://Scenes/victory_screen.tscn")

#-----------------Methods--------------

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if game_is_finished:
		timer += 20*delta
		if timer > TIMER_MAX :
			var root = get_tree().get_root()
			root.add_child(victory_scene.instantiate())
			root.remove_child(self)
			self.queue_free()
			

func _ready():
	GlobalAudioStreamPlayer.play_sound($Ambiance.stream)

func _change_icon(type_of_object):
	$CanvasLayer/GUI._change_icon(type_of_object)

func _input(event):
	if event is InputEventMouseButton:
		var type = $cursor._click_happenned(event)
		if type:
			$"Scene/Scene3D/Meuble/Chaise/Chaise avec man/AnimationPlayer".play("Take 001")
		var end_game = $CanvasLayer/GUI._change_icon(type)
		if end_game:
			game_is_finished = end_game
	

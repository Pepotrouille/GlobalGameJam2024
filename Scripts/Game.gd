extends Node

class_name Game

enum TYPE_OBJECTS {NONE, FLEUR, TOURNE_DISQUE, CROCS}

func _change_icon(type_of_object):
	$CanvasLayer/GUI._change_icon(type_of_object)

func _input(event):
	if event is InputEventMouseButton:
		var type = $cursor._click_happenned(event)
		if type:
			$"Scene/Meuble/Chaise/Chaise avec man/AnimationPlayer".play("Take 001")
		$CanvasLayer/GUI._change_icon(type)
	

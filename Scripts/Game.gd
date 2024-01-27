extends Node

class_name Game
#Types d'objet
enum TYPE_OBJECTS {NONE, FLEUR, TOURNE_DISQUE, CROCS}

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _change_icon(type_of_object):
	$CanvasLayer/GUI._change_icon(type_of_object)

func _input(event):
	if event is InputEventMouseButton:
		var type = $cursor._click_happenned(event)
		$CanvasLayer/GUI._change_icon(type)
	

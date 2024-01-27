extends Area2D

#-----------Attributes--------------

var cursor = load("res://Assets/placeholder/cursor.png")
var cursor_interact = load("res://Assets/placeholder/cursor_interact.png")
var cursor_interacting = load("res://Assets/placeholder/cursor_interact_2.png")

var can_interact : bool

var current_entered_area

#-----------Methods--------------


func _ready():
	set_process_input(true)
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	$Sprite2D.texture = cursor
	can_interact = false

func _process(delta):
	translate(get_local_mouse_position())


#---------------------------CHANGE IF IMPLEMENTS INPUT MANAGER
func _click_happenned(event):
	var type = null
	if can_interact:
		if event.pressed:
			switch_to_cursor_interacting()
		else:
			switch_to_cursor_interact()
			if current_entered_area is clickable_object:
				type = current_entered_area.get_type()
	return type



func _on_area_entered(area):
	switch_to_cursor_interact()
	can_interact = true
	current_entered_area = area


func _on_area_exited(area):
	switch_to_regular_cursor()
	can_interact = false
	current_entered_area = null



#----------------------------Sprite Cursor-----------------------

func _is_regular_cursor():
	return $Sprite2D.texture == cursor

func switch_to_regular_cursor():
	$Sprite2D.texture = cursor

func _is_cursor_interact():
	return $Sprite2D.texture == cursor_interact

func switch_to_cursor_interact():
	$Sprite2D.texture = cursor_interact

func _is_cursor_interacting():
	return $Sprite2D.texture == cursor_interacting

func switch_to_cursor_interacting():
	$Sprite2D.texture = cursor_interacting




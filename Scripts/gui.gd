extends Control

#CHANGER LES PATHS PAR VRAI ASSETS
var none_icon = load("res://Assets/placeholder/icon4.png")
var fleur_icon = load("res://Assets/placeholder/icon1.png")
var tourne_disque_icon = load("res://Assets/placeholder/icon2.png")
var crocs_icon = load("res://Assets/placeholder/icon3.png")



""" Test icons
func _unhandled_input(event):
	if event is InputEventKey:
		if event.pressed and event.keycode == KEY_A:
			_change_icon_1(0)
		if event.pressed and event.keycode == KEY_Z:
			_change_icon_1(1)
		if event.pressed and event.keycode == KEY_E:
			_change_icon_1(2)
		if event.pressed and event.keycode == KEY_R:
			_change_icon_1(3)
		if event.pressed and event.keycode == KEY_Q:
			_change_icon_2(0)
		if event.pressed and event.keycode == KEY_S:
			_change_icon_2(1)
		if event.pressed and event.keycode == KEY_D:
			_change_icon_2(2)
		if event.pressed and event.keycode == KEY_F:
			_change_icon_2(3)
		if event.pressed and event.keycode == KEY_W:
			_change_icon_3(0)
		if event.pressed and event.keycode == KEY_X:
			_change_icon_3(1)
		if event.pressed and event.keycode == KEY_C:
			_change_icon_3(2)
		if event.pressed and event.keycode == KEY_V:
			_change_icon_3(3)
"""

#--------------icons management-------------

func _change_icon_1(type_of_object):
	$Cases/icon1.texture = get_right_icon(type_of_object)

func _change_icon_2(type_of_object):
	$Cases/icon2.texture = get_right_icon(type_of_object)

func _change_icon_3(type_of_object):
	$Cases/icon3.texture = get_right_icon(type_of_object)


#CHANGER LES INT PAR clickable_object.TYPE_OBJECT
func get_right_icon(type_of_object):
	var icon = null
	#if type_of_object is clickable_object.type_object
	if type_of_object is Game.TYPE_OBJECTS:
		
		match type_of_object:
			Game.TYPE_OBJECTS.NONE:
				icon = none_icon
			Game.TYPE_OBJECTS.FLEUR:
				icon = fleur_icon
			Game.TYPE_OBJECTS.TOURNE_DISQUE:
				icon = tourne_disque_icon
			Game.TYPE_OBJECTS.CROCS:
				icon = crocs_icon
	return icon

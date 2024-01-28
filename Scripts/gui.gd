extends Control

#CHANGER LES PATHS PAR VRAI ASSETS
var none_icon = load("res://Assets/placeholder/icon4.png")
var fleur_icon = load("res://Assets/placeholder/icon1.png")
var tourne_disque_icon = load("res://Assets/placeholder/icon2.png")
var crocs_icon = load("res://Assets/placeholder/icon3.png")

var fleur_found = false
var tourne_disque_found = false
var crocs_found = false


#--------------icons management-------------

func _change_icon(type_of_object):
	var end_game = false
	#if type_of_object is clickable_object.type_object
	if type_of_object is Game.TYPE_OBJECTS:
		match type_of_object:
			Game.TYPE_OBJECTS.FLEUR:
				$Cases/icon1.texture = fleur_icon
				fleur_found = true
				$FleurCat._meme_appear()
			Game.TYPE_OBJECTS.TOURNE_DISQUE:
				$Cases/icon2.texture = tourne_disque_icon
				tourne_disque_found = true
				$TourneDisqueCat._meme_appear()
			Game.TYPE_OBJECTS.CROCS:
				$Cases/icon3.texture = crocs_icon
				crocs_found = true
				$CrocsCat._meme_appear()
				
	if crocs_found and tourne_disque_found and fleur_found:
		end_game = true
	return end_game


func _reset():
	fleur_found = false
	tourne_disque_found = false
	crocs_found = false
	$Cases/icon1.texture = none_icon
	$Cases/icon2.texture = none_icon
	$Cases/icon3.texture = none_icon
	$FleurCat._reset_timer()
	$TourneDisqueCat._reset_timer()
	$CrocsCat._reset_timer()

extends Node2D

func _ready():
	$Rules.visible = false

func _on_start_texture_button_pressed():
	$Rules.visible = true

func _on_start_texture_button_mouse_entered():
	$HoverButton.play()

func _on_credit_texture_button_pressed():
	GlobalAudioStreamPlayer.play_sound($ClickSimple.stream)
	get_tree().change_scene_to_file("res://Scenes/Credits.tscn")
#
func _on_credit_texture_button_mouse_entered():
	$HoverButton.play()

func _on_quit_texture_button_pressed():
	get_tree().quit()
#
func _on_quit_texture_button_mouse_entered():
	$HoverButton.play()

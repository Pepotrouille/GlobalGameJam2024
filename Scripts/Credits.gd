extends Node2D

func _on_back_texture_button_pressed():
	GlobalAudioStreamPlayer.play_sound($ClickSimple.stream)
	get_tree().change_scene_to_file("res://Scenes/Menu.tscn")

func _on_back_texture_button_mouse_entered():
	$HoverButton.play()

extends Node2D


func _on_start_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/Game.tscn")

func _on_start_button_mouse_entered():
	$HoverButton.play()

func _on_credit_button_pressed():
	GlobalAudioStreamPlayer.play_sound($ClickSimple.stream)
	get_tree().change_scene_to_file("res://Scenes/Credits.tscn")
#
func _on_credit_button_mouse_entered():
	$HoverButton.play()

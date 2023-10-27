extends Control

func _on_opcionesaudio_button_down():
	get_tree().change_scene_to_file("res://menu-settibngs-audio/src/sample_scene/sample_scene.tscn")

func _on_opcionesvideo_button_down():
	get_tree().change_scene_to_file("res://menu-settings-video/menu-video-settings.tscn")

func _on_salir_button_down():
	get_tree().change_scene_to_file("res://menu/menu.tscn")

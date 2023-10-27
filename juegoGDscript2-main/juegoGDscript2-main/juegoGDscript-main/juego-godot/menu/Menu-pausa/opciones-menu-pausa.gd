extends Control

func _on_opcionesaudio_button_down():
	get_tree().change_scene_to_file("res://menu/Menu-pausa/pausa-settings-audio/src/sample_scene/pausa-audio-menu.tscn")

func _on_opcionesvideo_button_down():
	get_tree().change_scene_to_file("res://menu/Menu-pausa/pausa-settings-video/pausa-video-settings.tscn")

func _on_reanudarmenu_button_down():
	get_tree().change_scene_to_file("res://Personajes/personaje.tscn")

func _on_salir_button_down():
	get_tree().change_scene_to_file("res://menu/menu.tscn")


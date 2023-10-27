extends Control

func _on_play_pressed():
	get_tree().change_scene_to_file("res://Personajes/personaje.tscn")

func _on_opciones_pressed():
	get_tree().change_scene_to_file("res://menu/settings-menu/opciones-menu.tscn")

func _on_salir_pressed():
	get_tree().quit()

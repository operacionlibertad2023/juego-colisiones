extends Control

func _on_fullview_toggled(button_pressed):
	if button_pressed == true:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	else:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
func _on_salir_button_down():
	get_tree().change_scene_to_file("res://menu/settings-menu/opciones-menu.tscn")

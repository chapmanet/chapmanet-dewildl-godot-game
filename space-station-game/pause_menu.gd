extends ColorRect


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	visible = false


func _on_restart_button_pressed() -> void:
	get_tree().paused = false
	get_tree().reload_current_scene()


func _on_exit_button_pressed() -> void:
	get_tree().quit()


func toggle_menu():
	# Show/hide menu
	visible = !visible
	# Pause/unpause game
	get_tree().paused = visible


func _unhandled_key_input(event: InputEvent) -> void:
	if event.is_action_pressed("menu"):
		print("menu")
		toggle_menu()

@tool
extends EditorPlugin

const MAINPANEL = preload("res://addons/gui_plugin/gui_plugin.tscn")

var main_panel_instance

func _enter_tree() -> void:
	main_panel_instance = MAINPANEL.instantiate()
	EditorInterface.get_editor_main_screen().add_child(main_panel_instance)
	_make_visible(false)

func _exit_tree() -> void:
	if main_panel_instance:
		main_panel_instance.queue_free()

func _has_main_screen():
	return true


func _make_visible(visible):
	if main_panel_instance:
		main_panel_instance.visible = visible


func _get_plugin_name():
	return "GUI-Plugin"


func _get_plugin_icon():
	return EditorInterface.get_editor_theme().get_icon("Node", "EditorIcons")

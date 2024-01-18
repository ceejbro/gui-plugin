@tool
extends Control


func _ready() -> void:
	(get_node("GridContainer/TabContainer/GridContainer/Label") as HSlider).value_changed.connect(_on_resize_top_left)
	(get_node("GridContainer/Label2") as HSlider).value_changed.connect(_on_resize_top_center)
	(get_node("GridContainer/Label3") as HSlider).value_changed.connect(_on_resize_top_right)
	(get_node("GridContainer/Label4") as HSlider).value_changed.connect(_on_resize_left_center)
	(get_node("GridContainer/Label6") as HSlider).value_changed.connect(_on_resize_right_center)
	(get_node("GridContainer/Label7") as HSlider).value_changed.connect(_on_resize_bottom_left)
	(get_node("GridContainer/Label8") as HSlider).value_changed.connect(_on_resize_bottom_center)
	(get_node("GridContainer/Label9") as HSlider).value_changed.connect(_on_resize_bottom_right)

func _on_resize_top_left(slider_value) -> void:
	print(slider_value)

func _on_resize_top_center(slider_value) -> void:
	print(slider_value)

func _on_resize_top_right(slider_value) -> void:
	print(slider_value)

func _on_resize_left_center(slider_value) -> void:
	print(slider_value)

func _on_resize_right_center(slider_value) -> void:
	print(slider_value)

func _on_resize_bottom_left(slider_value) -> void:
	print(slider_value)

func _on_resize_bottom_center(slider_value) -> void:
	print(slider_value)

func _on_resize_bottom_right(slider_value) -> void:
	print(slider_value)

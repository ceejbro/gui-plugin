@tool
extends Control

var topleftsquare : bool = true
var toprightsquare : bool = true
var botleftsquare : bool = true
var botrightsquare : bool = true

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
	if topleftsquare:
		var calculatedsize = ((get_node("GridContainer/TabContainer/GridContainer/Label") as HSlider).value / 100) * ((get_node("GridContainer/AspectRatioContainer/SubViewportContainer/SubViewport/Control") as Control).size.x)
		(get_node("GridContainer/AspectRatioContainer/SubViewportContainer/SubViewport/Control/TopLeftRect") as ColorRect).size = Vector2(calculatedsize, calculatedsize)

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

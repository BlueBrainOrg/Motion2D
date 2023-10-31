@tool
extends EditorPlugin

const PLUGIN_PREFIX = "GodotParadise"


func _enter_tree():
	add_custom_type(_add_prefix("PlatformerMovement"), "Node2D", preload("res://addons/motion2d/movement/platformer_movement.gd"), preload("res://addons/motion2d/icons/target.png"))
	add_custom_type(_add_prefix("TopDownMovement"), "Node2D", preload("res://addons/motion2d/movement/top_down_movement.gd"), preload("res://addons/motion2d/icons/arrow_diagonal.png"))
	add_custom_type(_add_prefix("GridMovement"), "Node2D", preload("res://addons/motion2d/movement/grid_movement.gd"), preload("res://addons/motion2d/icons/menu_grid.png"))


func _exit_tree():
	remove_custom_type(_add_prefix("PlatformerMovement"))
	remove_custom_type(_add_prefix("TopDownMovement"))
	remove_custom_type(_add_prefix("GridMovement"))


func _add_prefix(text: String) -> String:
	return "{prefix}{text}".format({"prefix": PLUGIN_PREFIX, "text": text}).strip_edges()

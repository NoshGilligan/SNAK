extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
@warning_ignore("unused_parameter")
func _process(delta):
	pass


func _on_night_select_pressed():
	get_tree().change_scene_to_file("res://scenes/Night_Select.tscn")
	

extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func _on_pressed():
	Movement.night = 2
	print(Movement.night)
	get_tree().change_scene_to_file("res://scenes/Office.tscn")
	Movement.time = 0
	Movement.kModif = 4
	Movement.jModif = 3
	Movement.lModif = 3
	##
	print(Movement.night)
	print(Movement.kModif)
	print(Movement.jModif)
	print(Movement.lModif)
	

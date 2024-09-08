extends Button

# Called when the node enters the scene tree for the first time.
func _ready():
	visible = false

func _process(delta):
	pass

func _on_computer_pressed():
	visible = true


func _on_pressed():
	visible = false

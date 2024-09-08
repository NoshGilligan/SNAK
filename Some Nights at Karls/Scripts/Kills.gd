extends Sprite2D
#signal karl_kill
#signal twins_kill
#signal karl_lisa_kill
#signal karl_jac_kill
func _ready():
	self.visible = false

func karl_kill():
	self.visible = true
	$AudioStreamPlayer.play()



func _on_button_pressed():
	karl_kill()

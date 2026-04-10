extends Sprite2D
#
var cams = -1
var stored_cam = 0
var button_texture_1 = preload("res://visuals/ButtonDarkerRed.png")
var button_texture_2 = preload("res://visuals/ButtonRed.png")
#
func _ready():
	# Set to invisible by default
	self.visible = false
#
func _process(delta):
	if cams > -1:
		self.visible = true
		if cams == 0:
			$".".texture = load("res://visuals/Screenshot 2026-03-27 12-08-38.png")
	else:
		self.visible = false
		$"../Camerasforeground1".visible = false
		$"../Camerasforeground2".visible = false
		$"../Camerasforeground3".visible = false
#
#func _on_computer_pressed():
	#cams = stored_cam
	#print("cams:", cams)

#func _on_exit_button_pressed():
	#cams = 0
	#print("cams:", cams)
	
#Lines 27 through 61 are for changing the base 6 cameras
func _on_cam_button_1_pressed() -> void:
	if cams > -1:
		$".".texture = load("res://visuals/SNAK CAMS1.png")
		$"../Camerasforeground1".visible = true
		$"../Camerasforeground2".visible = false
		$"../Camerasforeground3".visible = false
		$"../Camerasforeground1".texture = load("res://visuals/SNAK CAMS1-1.png")
		cams = 1
		stored_cam = 1
		print("cams:", cams)
#
func _on_cam_button_2_pressed() -> void:
	if cams > -1:
		$".".texture = load("res://visuals/SNAK CAMS2.png")
		$"../Camerasforeground1".visible = true
		$"../Camerasforeground2".visible = false
		$"../Camerasforeground3".visible = false
		$"../Camerasforeground1".texture = load("res://visuals/SNAK CAMS2-1.png")
		cams = 2
		stored_cam = 2
		print("cams:", cams)
#
func _on_cam_button_3_pressed() -> void:
	if cams > -1:
		$".".texture = load("res://visuals/SNAK CAMS3.png")
		$"../Camerasforeground1".visible = true
		$"../Camerasforeground2".visible = false
		$"../Camerasforeground3".visible = false
		$"../Camerasforeground1".texture = load("res://visuals/SNAK CAMS3-1.png")
		cams = 3
		stored_cam = 3
		print("cams:", cams)
#
func _on_cam_button_4_pressed() -> void:
	if cams > -1:
		$".".texture = load("res://visuals/SNAK CAMS4.png")
		$"../Camerasforeground1".visible = true
		$"../Camerasforeground2".visible = true
		$"../Camerasforeground3".visible = false
		$"../Camerasforeground1".texture = load("res://visuals/SNAK CAMS4-1.png")
		$"../Camerasforeground2".texture = load("res://visuals/SNAK CAMS4-2.png")
		cams = 4
		stored_cam = 4
		print("cams:", cams)
#
func _on_cam_button_5_pressed() -> void:
	if cams > -1:
		$".".texture = load("res://visuals/SNAK CAMS5.png")
		$"../Camerasforeground1".visible = true
		$"../Camerasforeground2".visible = true
		$"../Camerasforeground3".visible = true
		$"../Camerasforeground1".texture = load("res://visuals/SNAK CAMS5-1.png")
		$"../Camerasforeground2".texture = load("res://visuals/SNAK CAMS5-2.png")
		$"../Camerasforeground3".texture = load("res://visuals/SNAK CAMS5-3.png")
		cams = 5
		stored_cam = 5
		print("cams:", cams)
#
func _on_cam_button_6_pressed() -> void:
	if cams > -1:
		$".".texture = load("res://visuals/SNAK CAMS6.png")
		$"../Camerasforeground1".visible = true
		$"../Camerasforeground2".visible = true
		$"../Camerasforeground3".visible = false
		$"../Camerasforeground1".texture = load("res://visuals/SNAK CAMS6-1.png")
		$"../Camerasforeground2".texture = load("res://visuals/SNAK CAMS6-2.png")
		cams = 6
		stored_cam = 6
		print("cams:", cams)
#
#func _on_cam_7_pressed():
	#$cameras.texture = load("res://visuals/Cam7.png")
	#cams = 7
	#stored_cam = 7
	#print("cams:", cams)
#
#func _on_cam_8_pressed():
	#$cameras.texture = load("res://visuals/Cam8.png")
	#cams = 8
	#stored_cam = 8
	#print("cams:", cams)
#
#func _on_move_timer_timeout():
	#print("cams:", cams)
#
func _on_cam_switch_toggled(toggled_on: bool) -> void:
	if toggled_on == true:
		cams = stored_cam
		$"../CamerasBackground".texture = load("res://visuals/Black.png")
	else:
		cams = -1
		$"../CamerasBackground".texture = load("res://visuals/KindaBlack.png")
		$"../Camerasforeground1".visible = false
		$"../Camerasforeground2".visible = false
		$"../Camerasforeground3".visible = false
#

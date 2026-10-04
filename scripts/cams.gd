extends Sprite2D
#
var cams = -1
var stored_cam = 0
var access1 = 0
var access2 = 0
#
func _ready():
	# Set to invisible by default
	self.visible = false
#
func _process(delta):
	await get_tree().process_frame
	if cams > -1:
		self.visible = true
		if cams == 0:
			$".".texture = load("res://visuals/Screenshot 2026-03-27 12-08-38.png")
			$"../Camerasforeground1".visible = false
			$"../Camerasforeground2".visible = false
			$"../Camerasforeground3".visible = false
		if cams == 1:
			$".".texture = load("res://visuals/SNAK CAMS1.png")
			$"../Camerasforeground1".visible = true
			$"../Camerasforeground2".visible = false
			$"../Camerasforeground3".visible = false
			$"../Camerasforeground1".texture = load("res://visuals/SNAK CAMS1-1.png")
		if cams == 2:
			$".".texture = load("res://visuals/SNAK CAMS2.png")
			$"../Camerasforeground1".visible = true
			$"../Camerasforeground2".visible = false
			$"../Camerasforeground3".visible = false
			$"../Camerasforeground1".texture = load("res://visuals/SNAK CAMS2-1.png")
		if cams == 3:
			$".".texture = load("res://visuals/SNAK CAMS3.png")
			$"../Camerasforeground1".visible = true
			$"../Camerasforeground2".visible = false
			$"../Camerasforeground3".visible = false
			$"../Camerasforeground1".texture = load("res://visuals/SNAK CAMS3-1.png")
		if cams == 4:
			$".".texture = load("res://visuals/SNAK CAMS4.png")
			$"../Camerasforeground1".visible = true
			$"../Camerasforeground2".visible = true
			$"../Camerasforeground3".visible = false
			$"../Camerasforeground1".texture = load("res://visuals/SNAK CAMS4-1.png")
			$"../Camerasforeground2".texture = load("res://visuals/SNAK CAMS4-2.png")
		if cams == 5:
			$".".texture = load("res://visuals/SNAK CAMS5.png")
			$"../Camerasforeground1".visible = true
			$"../Camerasforeground2".visible = true
			$"../Camerasforeground3".visible = true
			$"../Camerasforeground1".texture = load("res://visuals/SNAK CAMS5-1.png")
			$"../Camerasforeground2".texture = load("res://visuals/SNAK CAMS5-2.png")
			$"../Camerasforeground3".texture = load("res://visuals/SNAK CAMS5-3.png")
		if cams == 6:
			$".".texture = load("res://visuals/SNAK CAMS6.png")
			$"../Camerasforeground1".visible = true
			$"../Camerasforeground2".visible = true
			$"../Camerasforeground3".visible = false
			$"../Camerasforeground1".texture = load("res://visuals/SNAK CAMS6-1.png")
			$"../Camerasforeground2".texture = load("res://visuals/SNAK CAMS6-2.png")
		#
		if cams == 1:
			%CamButton1.texture_normal = load("res://visuals/ButtonRed.png")
		else:
			%CamButton1.texture_normal = load("res://visuals/ButtonDarkerRed.png")
		if cams == 2:
			%CamButton2.texture_normal = load("res://visuals/ButtonRed.png")
		else:
			%CamButton2.texture_normal = load("res://visuals/ButtonDarkerRed.png")
		if cams == 3:
			%CamButton3.texture_normal = load("res://visuals/ButtonRed.png")
		else:
			%CamButton3.texture_normal = load("res://visuals/ButtonDarkerRed.png")
		if cams == 4:
			%CamButton4.texture_normal = load("res://visuals/ButtonRed.png")
		else:
			%CamButton4.texture_normal = load("res://visuals/ButtonDarkerRed.png")
		if cams == 5:
			%CamButton5.texture_normal = load("res://visuals/ButtonRed.png")
		else:
			%CamButton5.texture_normal = load("res://visuals/ButtonDarkerRed.png")
		if cams == 6:
			%CamButton6.texture_normal = load("res://visuals/ButtonRed.png")
		else:
			%CamButton6.texture_normal = load("res://visuals/ButtonDarkerRed.png")
	else:
		self.visible = false
		#$"../Camerasforeground1".visible = false
		#$"../Camerasforeground2".visible = false
		#$"../Camerasforeground3".visible = false

#Lines 27 through 61 are for changing the base 6 cameras
func _on_cam_button_1_pressed() -> void:
	if cams > -1:
		cams = 1
		stored_cam = 1
		print("cams:", cams)
#
func _on_cam_button_2_pressed() -> void:
	if cams > -1:
		cams = 2
		stored_cam = 2
		print("cams:", cams)
#
func _on_cam_button_3_pressed() -> void:
	if cams > -1:
		cams = 3
		stored_cam = 3
		print("cams:", cams)
#
func _on_cam_button_4_pressed() -> void:
	print("4 press")
	if cams > -1:
		cams = 4
		stored_cam = 4
		print("cams:", cams)
#
func _on_cam_button_5_pressed() -> void:
	if cams > -1:
		cams = 5
		stored_cam = 5
		print("cams:", cams)
#
func _on_cam_button_6_pressed() -> void:
	if cams > -1:
		cams = 6
		stored_cam = 6
		print("cams:", cams)
#
func _on_cam_button_7_pressed() -> void:
	if cams > -1 and access1 == 1:
		cams = 7
		stored_cam = 7
	if cams > -1 and access1 == 0:
		cams = 0
		stored_cam = 0
	print("cams:", cams)
#
func _on_cam_button_8_pressed() -> void:
	if cams > -1 and access1 == 1:
		cams = 8
		stored_cam = 8
	if cams > -1 and access1 == 0:
		cams = 0
		stored_cam = 0
	print("cams:", cams)
func _on_cam_button_9_pressed() -> void:
	if cams > -1 and access1 == 1:
		cams = 9
		stored_cam = 9
	if cams > -1 and access1 == 0:
		cams = 0
		stored_cam = 0
	print("cams:", cams)
func _on_cam_button_10_pressed() -> void:
	if cams > -1 and access1 == 1:
		cams = 10
		stored_cam = 10
	if cams > -1 and access1 == 0:
		cams = 0
		stored_cam = 0
	print("cams:", cams)
func _on_cam_button_11_pressed() -> void:
	if cams > -1 and access2 == 1:
		cams = 11
		stored_cam = 11
	if cams > -1 and access2 == 0:
		cams = 0
		stored_cam = 0
	print("cams:", cams)
func _on_cam_button_12_pressed() -> void:
	if cams > -1 and access2 == 1:
		cams = 12
		stored_cam = 12
	if cams > -1 and access2 == 0:
		cams = 0
		stored_cam = 0
	print("cams:", cams)
func _on_cam_button_13_pressed() -> void:
	if cams > -1 and access2 == 1:
		cams = 13
		stored_cam = 13
	if cams > -1 and access2 == 0:
		cams = 0
		stored_cam = 0
	print("cams:", cams)
func _on_cam_button_14_pressed() -> void:
	if cams > -1 and access2 == 1:
		cams = 14
		stored_cam = 14
	if cams > -1 and access2 == 0:
		cams = 0
		stored_cam = 0
	print("cams:", cams)
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

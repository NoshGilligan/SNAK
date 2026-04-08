extends Sprite2D

var cams = -1
var stored_cam = 1
var button_texture_1 = preload("res://visuals/ButtonDarkerRed.png")
var button_texture_2 = preload("res://visuals/ButtonRed.png")

func _ready():
	# Set to invisible by default
	self.visible = false

func _process(delta):
	if cams > -1:
		self.visible = true
	else:
		self.visible = false

#func _on_computer_pressed():
	#cams = stored_cam
	#print("cams:", cams)

#func _on_exit_button_pressed():
	#cams = 0
	#print("cams:", cams)

func _on_cam_button_1_pressed() -> void:
	$".".texture = load("res://visuals/SNAK CAMS1.png")
	cams = 1
	stored_cam = 1
	print("cams:", cams)

func _on_cam_button_2_pressed() -> void:
	$".".texture = load("res://visuals/SNAK CAMS2.png")
	cams = 2
	stored_cam = 2
	print("cams:", cams)

func _on_cam_button_3_pressed() -> void:
	$".".texture = load("res://visuals/SNAK CAMS3.png")
	cams = 3
	stored_cam = 3
	print("cams:", cams)

func _on_cam_button_4_pressed() -> void:
	$".".texture = load("res://visuals/SNAK CAMS4.png")
	cams = 4
	stored_cam = 4
	print("cams:", cams)

func _on_cam_button_5_pressed() -> void:
	$".".texture = load("res://visuals/SNAK CAMS5.png")
	cams = 5
	stored_cam = 5
	print("cams:", cams)

func _on_cam_button_6_pressed() -> void:
	$".".texture = load("res://visuals/SNAK CAMS6.png")
	cams = 6
	stored_cam = 6
	print("cams:", cams)

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

func camera_buttons(delta):
	#yeah, I made a whole function just to change the color of a sprite
	if cams == 1:
		$"../CamButton1".button_down = true
	else:
		$"../CamButton1".button_down = false
		
	if cams == 2:
		$"../CamButton2".texture_normal = load("res://visuals/ButtonRed.png")
		$"../CamButton2".z_index = 2
	else:
		$"../CamButton2".texture_normal = load("res://visuals/ButtonDarkerRed.png")
		$"../CamButton2".z_index = 2
		
	if cams == 3:
		$"../CamButton3".texture_normal = load("res://visuals/ButtonRed.png")
		$"../CamButton3".z_index = 2
	else:
		$"../CamButton3".texture_normal = load("res://visuals/ButtonDarkerRed.png")
		$"../CamButton3".z_index = 2
		
	if cams == 4:
		$"../CamButton4".texture_normal = load("res://visuals/ButtonRed.png")
		$"../CamButton4".z_index = 2
	else:
		$"../CamButton4".texture_normal = load("res://visuals/ButtonDarkerRed.png")
		$"../CamButton4".z_index = 2
		
	if cams == 5:
		$"../CamButton5".texture_normal = load("res://visuals/ButtonRed.png")
		$"../CamButton5".z_index = 2
	else:
		$"../CamButton5".texture_normal = load("res://visuals/ButtonDarkerRed.png")
		$"../CamButton5".z_index = 2
		
	if cams == 6:
		$"../CamButton6".texture_normal = load("res://visuals/ButtonRed.png")
		$"../CamButton6".z_index = 2
	else:
		$"../CamButton6".texture_normal = load("res://visuals/ButtonDarkerRed.png")
		$"../CamButton6".z_index = 2
	

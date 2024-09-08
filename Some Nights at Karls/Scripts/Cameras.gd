extends Control

var cams = 0
var stored_cam = 1

func _ready():
	# Set to invisible by default
	self.visible = false

func _process(delta):
	if cams > 0:
		self.visible = true
	else:
		self.visible = false

func _on_computer_pressed():
	cams = stored_cam
	print("cams:", cams)

func _on_exit_button_pressed():
	cams = 0
	print("cams:", cams)

func _on_cam_1_pressed():
	$cameras.texture = load("res://visuals/Cam1.png")
	cams = 1
	stored_cam = 1
	print("cams:", cams)

func _on_cam_2_pressed():
	$cameras.texture = load("res://visuals/Cam2.png")
	cams = 2
	stored_cam = 2
	print("cams:", cams)

func _on_cam_3_pressed():
	$cameras.texture = load("res://visuals/Cam3.png")
	cams = 3
	stored_cam = 3
	print("cams:", cams)

func _on_cam_4_pressed():
	$cameras.texture = load("res://visuals/Cam4.png")
	cams = 4
	stored_cam = 4
	print("cams:", cams)

func _on_cam_5_pressed():
	$cameras.texture = load("res://visuals/Cam5.png")
	cams = 5
	stored_cam = 5
	print("cams:", cams)

func _on_cam_6_pressed():
	$cameras.texture = load("res://visuals/Cam6.png")
	cams = 6
	stored_cam = 6
	print("cams:", cams)

func _on_cam_7_pressed():
	$cameras.texture = load("res://visuals/Cam7.png")
	cams = 7
	stored_cam = 7
	print("cams:", cams)

func _on_cam_8_pressed():
	$cameras.texture = load("res://visuals/Cam8.png")
	cams = 8
	stored_cam = 8
	print("cams:", cams)

func _on_move_timer_timeout():
	print("cams:", cams)

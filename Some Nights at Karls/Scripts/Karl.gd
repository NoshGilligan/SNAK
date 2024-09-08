extends Sprite2D

var karl = -1
var karlS = 0
var karlM = 0
var karlP = 0
var karlD = 0

func _ready():
	self.visible = false
	

func _process(_delta):
	# Now check the conditions for karl’s visibility
	if (karl == 1) and (Cameras.cams == 8):
		self.visible = true
	elif (karl == 2):
		self.visible = true
	elif (karl == 3):
		self.visible = true
	else:
		self.visible = false
		

func _on_move_timer_timeout():
	print("Karl:", karl)
	print("camnum:", Cameras.cams)
	if karlS == 0:
		karlM = randi_range(1,10) + Movement.kModif
		if karlM > Movement.move:
			karl = karl + 1
			if karl == 6:
				karlP = randi_range(0,1)
				if karlP == 0:
					karl = 7
				elif karlP == 1:
					karl = 9
			if karl == 8 or karl == 10:
				karlS = 2
	elif karlS == 1:
		karl = karl + 1
		if karl == 6:
			karlP = randi_range(0,1)
			if karlP == 0:
				karl = 7
			elif karlP == 1:
				karl = 9
		if karl == 8 or karl == 10:
			karlS = 2
	elif karlS == 2:
		if karl == 8 and Movement.doors[1] == 0:
			karl = 11
			karlS = 3
		elif karl == 8 and Movement.doors[1] == 1:
			if karlD < 2:
				Movement.doors[1] = 0
			else:
				karlD += 1
		if karl == 10 and Movement.doors[0] == 0:
			karl = 11
			karlS = 3
		elif karl == 8 and Movement.doors[1] == 1:
			if karlD < 2:
				Movement.doors[1] = 0
			else:
				karlD += 1
	elif karlS == 3:
		@warning_ignore("standalone_expression")
		Kills.karl_kill

	print("karlM:", karlM)
	print("karlS:", karlS)
	print("karl:", karl)
	print("camnum:", Cameras.cams)

func _on_state_timer_timeout():
	if karlS == 0:
		karlS = randi_range(0,1)

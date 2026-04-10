extends Sprite2D

var karl = -1
var karlM = 0
var karlMod = 0

func _ready():
	self.visible = false
	

func _process(_delta):
	# Now check the conditions for karl’s visibility
	if (karl == 1):
		self.visible = true
	elif (karl == 2):
		self.visible = true
	elif (karl == 3):
		self.visible = true
	else:
		self.visible = false
		

func _on_move_timer_timeout():
	if karl > -1:
		print("Karl:", karl)
		karlM = randi_range(1,20) + karlMod
		if karlM > Movement.move:
			karl = karl + 1
		#if karl == 4:

		print("karlM:", karlM)
		print("karl:", karl)

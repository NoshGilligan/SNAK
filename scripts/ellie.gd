extends AnimatedSprite2D

var eliza = 0
var elizaM = 10
var elizaR = 0
var elizaQ = 0
var elizaPatience = 100

var glassSounds = [preload("res://audio/glass.mp3"),preload("res://audio/glass2.mp3"),preload("res://audio/glass3.mp3")]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.visible = false
	if (Main.night == 1):
		eliza = 0
		elizaM = 1
		elizaQ = 1
	print(eliza)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	eliza == Ellie.eliza
	if (eliza == 5 and $"../Cams".cams == 4):
		self.frame = 0
		self.z_index = 7
		self.visible = true
	elif (eliza == 6 and $"../Cams".cams == 4):
		self.z_index = 2
		self.frame = 1
		self.visible = true
	elif (eliza == 8 and $"../Cams".cams == 1):
		self.frame = 0
		self.z_index = 8
		self.visible = true
	else:
		self.visible = false
	
	if $"../EllieOffice" != null:
		if eliza == 100:
			#$"../EllieOffice".animation = "Desk"
			$"../EllieOffice".visible = true
		elif eliza == -2:
			#$"../EllieOffice".animation = "Leaving"
			$"../EllieOffice".visible = false
			#Ellie.eliza = 0
			#eliza = 0

func _on_ellie_timer_timeout():
	if eliza > -1: #and elizaQ > 0:
		if eliza == 5:
			if Main.night == 1:
				elizaR = 0
			else:
				elizaR = randi_range(0, 1)
			if elizaR == 0:
				eliza = 6
			else:
				eliza = 7
		if eliza == 6: #if eliza is in her 6th position
			if RightDoor.doorLocked == true: #if the door is locked
				$EllieTimer.start(2)
				elizaPatience -= 2.5 + elizaM #reduce patience
				if elizaPatience <= 0: #if patience falls to or below 0, reduce the door condition by 25
					if RightDoor.glassCondtion > 0 or RightDoor.doorCondition > 0:
						RightDoor.glassCondtion = RightDoor.glassCondtion - ( 20 + elizaM )
						if RightDoor.glassCondtion >= 1:
							$"../EllieOffice/AudioStreamPlayer2D".set_stream(glassSounds[randi_range(0,2)])
							$"../EllieOffice/AudioStreamPlayer2D".play()
						else:
							$"../EllieOffice/AudioStreamPlayer2D".set_stream(preload("res://audio/glass4.mp3"))
							$"../EllieOffice/AudioStreamPlayer2D".play()
							$"../EllieOffice".animation = "RightDoor"
							$"../EllieOffice".visible = true
							RightDoor.doorLocked = false
							$EllieTimer.start(10)
			else:
				eliza = 100 #If the door is "unlocked"
		elif eliza == 9:
			if LeftDoor.doorLocked == true: #if the door is locked
				$EllieTimer.start(2)
				elizaPatience -= 2.5 + elizaM #reduce patience
				if elizaPatience <= 0: #if patience falls to or below 0, reduce the door condition by 25
					if LeftDoor.glassCondtion > 0 or RightDoor.doorCondition > 0:
						LeftDoor.glassCondtion = RightDoor.glassCondtion - ( 20 + elizaM )
						if LeftDoor.glassCondtion >= 1:
							$"../EllieOffice/AudioStreamPlayer2D".set_stream(glassSounds[randi_range(0,2)])
							$"../EllieOffice/AudioStreamPlayer2D".play()
						else:
							$"../EllieOffice/AudioStreamPlayer2D".set_stream(preload("res://audio/glass4.mp3"))
							$"../EllieOffice/AudioStreamPlayer2D".play()
							$"../EllieOffice".animation = "LeftDoor"
							$"../EllieOffice".visible = true
							LeftDoor.doorLocked = false
							$EllieTimer.start(10)
			else:
				eliza = 100 #If the door is "unlocked"
		elif eliza == 100:
			$EllieTimer.start(10 + (elizaPatience/10))
		else:
			eliza = eliza + 1
			
		#print("Right Door glass condition:", RightDoor.glassCondtion)
		#print("Left Door glass condition:", LeftDoor.glassCondtion)
		#print("Right Door lock:", RightDoor.doorLocked)
		print("elizaM:", elizaM)
		print("eliza:", eliza)
		print("eliza Patience:", elizaPatience)
		#print('Ellie.eliza: ', Ellie.eliza)

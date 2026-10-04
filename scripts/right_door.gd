extends AnimatedSprite2D

var doorLocked = false
var glassCondtion = 100
var doorCondition = 100

var doorSoundsA = ["res://audio/Wood1.mp3", "res://audio/wood2.mp3", "res://audio/wood3.mp3", "res://audio/wood4.mp3"]
var glassSounds = [preload("res://audio/glass.mp3"),preload("res://audio/glass2.mp3"),preload("res://audio/glass3.mp3")]



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	glassCondtion = RightDoor.glassCondtion
	doorCondition = RightDoor.doorCondition
	doorLocked = RightDoor.doorLocked
	if glassCondtion >= 90:
		$".".frame = 0
	elif glassCondtion <= 89 and glassCondtion >= 50:
		$".".frame = 1
	elif glassCondtion <= 50 and glassCondtion >= 26:
		$".".frame = 2
	if glassCondtion <= 25 and glassCondtion >= 1:
		$".".frame = 3
	if glassCondtion <= 0:
		$".".frame = 4
	pass


#func _on_ellie_timer_timeout():
	#print(doorLocked)
	#if doorCondition == 75 or doorCondition == 50 or doorCondition == 25:
		#$AudioStreamPlayer2D.set_stream(preload("res://audio/glass.mp3"))
		#$AudioStreamPlayer2D.play()
	#elif doorCondition == 0:
		#$AudioStreamPlayer2D.set_stream(preload("res://audio/glass4.mp3"))
		#$AudioStreamPlayer2D.play()
	#print("Right Door Condition:", doorCondition)

extends Sprite2D

var karl = -1
var karlM = 0
var karlMod = 0
var karlR = 0

func _ready():
	if (Main.night == 1):
		karl = 0
	print(karl)
	$".".visible = false
	

func _process(delta: float) -> void:
	if (karl == 4 and $"../Cams".cams == 1):
		$".".visible = true
	elif (karl == 5 and $"../Cams".cams == 4):
		$".".visible = true
	else:
		$".".visible = false
		

func _on_move_timer_timeout():
	if karl > -1:
		print("Karl:", karl)
		karlM = randi_range(0,10) + karlMod
		if karl == 4:
			karlR = randi_range(0, 1)
		if karlM > Movement.move:
			karl = karl + 1
		#if karl == 6:

		print("karlM:", karlM)
		print("karl:", karl)

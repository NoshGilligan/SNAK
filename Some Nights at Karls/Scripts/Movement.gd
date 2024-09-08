extends Node

var night = 0
var time = 0

var jac = -1
var jacS = 0
var jacR = 0
var jacM = 0
var jacP = [0,0]

var lisa = -1
var lisaS = 0
var lisaR = 0
var lisaM = 0
var lisaP = [0,0]

var eliza = -1
var elizaS = 0
var elizaD = 0

var knox = -1

var carol = -1

var steve = -1
var steveM = 0

var brew = [0, 0, 0, 0]
var doors = [0, 0]

var move = 0
var kModif = 0
var jModif = 0
var lModif = 0
var lights = true

func _on_night_timer_timeout():
	time += 1
	print("time")
	print(time)
	
func _on_state_timer_timeout():
	print("state change")
	if jacS == 0:
		jacS = randi_range(0,1)
	if lisaS == 0:
		lisaS = randi_range(0,1)
	
func _on_timeout():		
	
	print("moving")
	if time < 6:
		move = randi_range(1,20)
		
		##
		
		if jacS == 0:
			jacM = randi_range(1,4)
			if jacM == 1 and jacP[0] <= 3:
				jacP[0] += 1
			if jacM == 2 and jacP[0] >= 0:
				jacP[0] -= 1
			if jacM == 3 and jacP[1] <= 4:
				jacP[1] += 1
			if jacM == 4 and jacP[1] >= 0:
				jacP[1] += 1
			if jacP == [2,4]:
				jacS = 2
		elif jacS == 1:
			if jacP[0] != 2:
				jacP[0] = 2
			else:
				jacP[1] += 1
			if jacP == [2,4]:
				jacS = 2
		#print(jacM)
		#print(jacP)
		#print(jac)
		
		##
		
		if lisaS == 0:
			lisaM = randi_range(1,4)
			if lisaM == 1 and lisaP[0] <= 3:
				lisaP[0] += 1
			if lisaM == 2 and lisaP[0] >= 0:
				lisaP[0] -= 1
			if lisaM == 3 and lisaP[1] <= 4:
				jacP[1] += 1
			if lisaM == 4 and lisaP[1] >= 0:
				lisaP[1] += 1
			if lisaP == [2,4]:
				lisaS = 2
		elif lisaS == 1:
			if lisaP[0] != 2:
				lisaP[0] = 2
			else:
				lisaP[1] += 1
			if lisaP == [2,4]:
				lisaS = 2
		#print(lisaM)
		#print(lisaP)
		#print(lisa)
		
		##
		
		if carol < 12:
			carol = carol + 1
		print("carol")
		print(carol)

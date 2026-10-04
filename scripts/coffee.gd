extends Sprite2D
var bean = 0
var water = 0
var crem = 0

var on = false
var full = false

var input = [bean, water, crem]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	input = [bean, water, crem]
	if Ellie.eliza == 0:
		$"../EllieOffice".animation = "Leaving"
		$"../EllieOffice".visible = false

func _on_bean_button_button_up() -> void:
	bean += 1

func _on_water_button_button_up() -> void:
	water += 1

func _on_cream_button_button_up() -> void:
	crem += 1

func _on_coffe_button_button_up() -> void:
	if bean >= 1 and water >= 1:
		if full == false:
			if input == [2, 3, 3]:
				$".".texture = preload("res://visuals/SNAKMug2.png")
			else:
				$".".texture = preload("res://visuals/SNAKMug4.png")
			$CoffeeTimer.start(8)
	print(input)

func _on_coffee_timer_timeout() -> void:
		if input == [2, 3, 3]:
			$".".texture = preload("res://visuals/SNAKMug3.png")
		else:
			$".".texture = preload("res://visuals/SNAKMug5.png")
		full = true

func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if Input.is_action_pressed("left_click"):
		if full == true:
			$".".global_position = get_global_mouse_position()
	else:
		$".".global_position = Vector2(1290.0, 518.0)

func _on_area_2d_area_entered(area: Area2D) -> void:
	if input == [2, 3, 3]:
		input = [0, 0, 0]
		$".".texture = preload("res://visuals/SNAKMug1.png")
		Ellie.eliza = -2
		full = false
		print('Eliza: ', Ellie.eliza)
		bean = 0
		water = 0
		crem = 0

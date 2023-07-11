extends CharacterBody2D

var speed = 400

func get_input():
	velocity = Vector2.ZERO
	var up = Input.is_action_pressed("ui_up")
	var down = Input.is_action_pressed("ui_down")
	if up:
		velocity.y -= 1
	if down:
		velocity.y += 1

func _physics_process(delta):
	
	get_input()	
	velocity = velocity * speed
	move_and_slide()

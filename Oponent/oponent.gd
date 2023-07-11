extends CharacterBody2D
@onready var ball = $"../Ball"

var speed = 250
	
func get_opponent_direction():
	if abs(ball.position.y - position.y) > 25:
		if ball.position.y > position.y:
			return 1
		else:
			return -1
	else:
		return 0
		
func _physics_process(delta):
	velocity.x = 0
	velocity.y = get_opponent_direction() * speed
	move_and_slide() 

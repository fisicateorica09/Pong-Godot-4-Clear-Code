extends CharacterBody2D

var speed = 300

func random_velocity():
	velocity.x = [-1, 1][randi() % 2] 
	velocity.y = [-0.8, 0.8][randi() % 2] 

func _ready():
	set_velocity(Vector2.ZERO)
	randomize()
	random_velocity()
	
func _physics_process(delta):
	var colisao_objeto = move_and_collide(velocity * speed * delta)
	if colisao_objeto:
		velocity = velocity.bounce(colisao_objeto.get_normal())
		$CollisionSound.play()
		
func stop_ball():
	speed = 0

func restart_ball():
	speed = 300
	random_velocity()

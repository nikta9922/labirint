extends CharacterBody2D
var speed=50
var speed_shift=100
var Max_Stamina=100
var stamina=100
var Min_stamina=0
func _physics_process(delta: float) -> void:
	var Input_vector=Vector2(0,0)
	Input_vector.x=Input.get_action_strength("right")-Input.get_action_strength("left")
	Input_vector.y=Input.get_action_strength("down")-Input.get_action_strength("up")
	velocity=Input_vector*speed
	if Input.is_action_pressed("Stamina"):
		stamina-=1
		speed=speed_shift
	else: 
		Min_stamina<0
		speed_shift=0
		stamina+=0.5
		speed=50
		
	print(stamina)
	move_and_slide()
	if Input_vector==Vector2(0,0):
		$AnimatedSprite2D.play("Stop")
	elif Input_vector.x>0:
		$AnimatedSprite2D.play("run_side")
		$AnimatedSprite2D.flip_h=false
	elif Input_vector.x<0:
		$AnimatedSprite2D.play("run_side")
		$AnimatedSprite2D.flip_h=true
	elif Input_vector.y>0:
		$AnimatedSprite2D.play("down")
	elif Input_vector.y<0:
		$AnimatedSprite2D.play("up")
		
	

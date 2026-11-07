extends CharacterBody2D

const speed = 100;
# shows which way the player is facing 
var current_dir = "none"
func _physics_process(delta):
	player_movement(delta)

func player_movement(delta):
		
		if Input.is_action_pressed("ui_right"):
			current_dir = "right"
			velocity.x = speed
			play_anim(1)
			velocity.y = 0
			
			
			
		elif Input.is_action_pressed("ui_left"):
			current_dir = "left"
			play_anim(1)
			velocity.x = -speed
			velocity.y = 0
			
			
		elif Input.is_action_pressed("ui_down"):
			velocity.y = speed
			velocity.x = 0
			current_dir = "down"
			play_anim(1)
			
		elif Input.is_action_pressed("ui_up"):
			play_anim(1)
			velocity.y = -speed
			velocity.x = 0
			current_dir = "up"
		else:
			
			velocity.x = 0
			velocity.y = 0
			play_anim(0)
		move_and_slide()
func play_anim(movement):
	var dir = current_dir
	var anim = $AnimatedSprite2D
	
	if dir == "right":
		anim.flip_h = false
		if movement == 1:
			anim.play("side walk")
		elif movement == 0:
			anim.play("idle")
			
	if dir == "left":
		anim.flip_h = true
		if movement == 1:
			anim.play("side walk")
		elif movement == 0:
			anim.play("idle")
			
	if dir == "up":
		anim.flip_h = true
		if movement == 1:
			anim.play("up")
		elif movement == 0:
			anim.play("idle")
			
	if dir == "down":
		anim.flip_h = true
		if movement == 1:
			anim.play("down")
		elif movement == 0:
			anim.play("idle")
			

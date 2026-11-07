extends CharacterBody2D

const speed = 100;
# shows which way the player is facing 
var current_dir = "none"

func play_anim(movement):
	var dir = current_dir
	var anim = $AnimatedSprite2D
	
	if dir == "none":
		anim.flip_h = false
		if movement == 0:
			anim.play("bad")
		elif movement == 1:
			anim.play("good")

extends KinematicBody2D

const SPEED = 600
var motion = Vector2()

func _physics_process(delta):
	if Input.is_action_pressed("ui_right") && Input.is_action_pressed("ui_up"):
		motion.x = SPEED
		motion.y = -SPEED/2
		$AnimatedSprite.play("acelerate")
	elif Input.is_action_pressed("ui_right") && Input.is_action_pressed("ui_down"):
		motion.x = SPEED
		motion.y = SPEED/2
		$AnimatedSprite.play("acelerate")
	elif Input.is_action_pressed("ui_left") && Input.is_action_pressed("ui_up"):
		motion.x = SPEED/10
		motion.y = -SPEED/2
		$AnimatedSprite.play("desacelerate")
	elif Input.is_action_pressed("ui_left") && Input.is_action_pressed("ui_down"):
		motion.x = SPEED/10
		motion.y = SPEED/2
		$AnimatedSprite.play("desacelerate")
	elif Input.is_action_pressed("ui_right"):
		motion.x = SPEED
		motion.y = 0
		$AnimatedSprite.play("acelerate")
	elif Input.is_action_pressed("ui_left"):
		motion.x = SPEED/12
		motion.y = 0
		$AnimatedSprite.play("desacelerate")
	elif Input.is_action_pressed("ui_up"):
		motion.y = -SPEED/2
		motion.x = SPEED/4
		$AnimatedSprite.play("idle")
	elif Input.is_action_pressed("ui_down"):
		motion.y = SPEED/2
		motion.x = SPEED/4
		$AnimatedSprite.play("idle")
	else:
		motion.x = SPEED/4
		motion.y = 0
		$AnimatedSprite.play("idle")	
		
	motion = move_and_slide(motion)
	pass

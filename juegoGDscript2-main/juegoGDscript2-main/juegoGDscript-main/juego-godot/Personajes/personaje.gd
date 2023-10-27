extends CharacterBody2D

var velocidad = 250
var movimiento = Vector2()

@onready var anim = $AnimationPlayer

var teclaPresionada = false

func _process(_delta):
	movimiento = Vector2()
	teclaPresionada = false
	
	if Input.is_action_pressed("ui_up"):
		movimiento.y -= velocidad
		anim.play("caminarArriba")
		teclaPresionada = true

	if Input.is_action_pressed("ui_down"):
		movimiento.y += velocidad
		anim.play("caminarAbajo")
		teclaPresionada = true

	if Input.is_action_pressed("ui_left"):
		movimiento.x -= velocidad
		anim.play("caminarIzquierda")
		teclaPresionada = true

	if Input.is_action_pressed("ui_right"):
		movimiento.x += velocidad
		anim.play("caminarDerecha")
		teclaPresionada = true

	if movimiento.length() > 0:
		movimiento = movimiento.normalized() * velocidad

	position += movimiento * _delta

	if not teclaPresionada:
		anim.play("idle") 

	if Input.is_action_pressed("ui_cancel"):
		get_tree().change_scene_to_file("res://menu/Menu-pausa/opciones-menu-pausa.tscn")
  
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up","ui_down")

	if direction:
		velocity = direction * velocidad
	else:
		velocity.x = move_toward(velocity.x, 0, velocidad)
		velocity.y = move_toward(velocity.y, 0, velocidad)

	move_and_slide()

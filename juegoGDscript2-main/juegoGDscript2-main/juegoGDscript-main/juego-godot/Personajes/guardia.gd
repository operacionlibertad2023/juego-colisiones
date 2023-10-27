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
		anim.play("c")
		teclaPresionada = true

	if Input.is_action_pressed("ui_down"):
		movimiento.y += velocidad
		anim.play("caminarArriba")
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

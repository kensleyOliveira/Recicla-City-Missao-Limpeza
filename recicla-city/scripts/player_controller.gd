extends CharacterBody2D
class_name PlayerHero

# --- PARÂMETROS DE MOVIMENTAÇÃO ---
@export var speed: float = 250.0          # Velocidade linear do herói
@export var rotation_speed: float = 12.0  # Suavidade de rotação/movimento

# --- VARIÁVEIS DE CONTROLE DE FLUXO ---
var target_position: Vector2 = Vector2.ZERO
var is_moving: bool = false

func _ready() -> void:
	target_position = global_position

func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		target_position = get_global_mouse_position()
		is_moving = true
		
	elif event is InputEventScreenTouch and event.pressed:
		target_position = event.position
		is_moving = true

func _physics_process(_delta: float) -> void: # Adicionado o sublinhado para remover o warning de UNUSED_PARAMETER
	if is_moving:
		var direction: Vector2 = (target_position - global_position).normalized()
		var distance: float = global_position.distance_to(target_position)
		
		if distance > 5.0:
			velocity = direction * speed
			move_and_slide()
		else:
			velocity = Vector2.ZERO
			is_moving = false

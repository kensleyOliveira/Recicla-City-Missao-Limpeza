extends Node2D
class_name MapGrid

@export var grid_width: int = 16
@export var grid_height: int = 16
@export var cell_size: Vector2 = Vector2(64, 32)

var grid_matrix: Array = []
var available_spawn_points: Array[Vector2] = []

func _ready() -> void:
	initialize_grid()
	map_obstacle_boundaries()

func initialize_grid() -> void:
	grid_matrix.clear()
	available_spawn_points.clear()
	
	for x in range(grid_width):
		var column: Array[int] = []
		for y in range(grid_height):
			column.append(0)
			available_spawn_points.append(Vector2(x, y))
		grid_matrix.append(column)
	
	print("MapGrid: Matriz lógica inicializada com sucesso (%dx%d)." % [grid_width, grid_height])

func grid_to_isometric(grid_pos: Vector2) -> Vector2:
	var iso_x: float = (grid_pos.x - grid_pos.y) * (cell_size.x / 2.0)
	var iso_y: float = (grid_pos.x + grid_pos.y) * (cell_size.y / 2.0)
	return Vector2(iso_x, iso_y)

func map_obstacle_boundaries() -> void:
	for x in range(7, 9):
		for y in range(7, 9):
			set_cell_state(Vector2(x, y), 1)

func set_cell_state(grid_pos: Vector2, new_state: int) -> void:
	if grid_pos.x >= 0 and grid_pos.x < grid_width and grid_pos.y >= 0 and grid_pos.y < grid_height:
		grid_matrix[grid_pos.x][grid_pos.y] = new_state
		
		if new_state != 0:
			available_spawn_points.erase(grid_pos)
		elif new_state == 0 and not available_spawn_points.has(grid_pos):
			available_spawn_points.append(grid_pos)
	else:
		push_warning("MapGrid: Tentativa de acessar coordenada fora dos limites: ", grid_pos)

func get_random_free_spawn_position() -> Vector2:
	if available_spawn_points.is_empty():
		push_error("MapGrid: Não há mais espaços livres disponíveis no mapa!")
		return Vector2.ZERO
		
	available_spawn_points.shuffle()
	var chosen_grid_pos: Vector2 = available_spawn_points[0]
	return grid_to_isometric(chosen_grid_pos)

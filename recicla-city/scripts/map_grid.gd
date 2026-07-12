extends Node2D
class_name MapGrid

# --- CONFIGURAÇÕES DO GRID ---
@export var grid_width: int = 16       # Largura do mapa lógico (colunas)
@export var grid_height: int = 16      # Altura do mapa lógico (linhas)
@export var cell_size: Vector2 = Vector2(64, 32) # Tamanho da célula isométrica (Proporção 2:1)

# --- MATRIZ LÓGICA DE OCUPAÇÃO ---
# Armazena o estado de cada célula: 0 = Livre, 1 = Obstáculo/Lixeira, 2 = Já tem lixo
var grid_matrix: Array = []

# --- REFERÊNCIAS ---
# Vetor contendo apenas as coordenadas Vector2 (X, Y) mapeadas como livres para spawn
var available_spawn_points: Array[Vector2] = []

func _ready() -> void:
	initialize_grid()
	map_obstacle_boundaries()

## Inicializa a matriz bidimensional com todas as células livres (0)
func initialize_grid() -> void:
	grid_matrix.clear()
	available_spawn_points.clear()
	
	for x in range(grid_width):
		var column: Array[int] = []
		for y in range(grid_height):
			column.append(0) # Estado inicial: Livre
			# Adiciona como ponto potencial de spawn de detritos
			available_spawn_points.append(Vector2(x, y))
		grid_matrix.append(column)
	
	print("MapGrid: Matriz lógica inicializada com sucesso (%dx%d)." % [grid_width, grid_height])

## Converte coordenadas de Grid Lógico (X, Y) para Posição Isométrica 2D no espaço Global
func grid_to_isometric(grid_pos: Vector2) -> Vector2:
	var iso_x: float = (grid_pos.x - grid_pos.y) * (cell_size.x / 2.0)
	var iso_y: float = (grid_pos.x + grid_pos.y) * (cell_size.y / 2.0)
	return Vector2(iso_x, iso_y)

## Define células específicas como ocupadas para evitar spawn de lixo dentro de paredes ou da base
func map_obstacle_boundaries() -> void:
	# EXEMPLO: Bloqueia o centro do mapa (onde ficam os Postos de Reciclagem)
	# Supondo que a base ocupe as coordenadas lógicas de (7,7) a (8,8)
	for x in range(7, 9):
		for y in range(7, 9):
			set_cell_state(Vector2(x, y), 1) # 1 = Obstáculo intransponível

## Altera o estado de uma célula e atualiza a lista de pontos de spawn disponíveis
func set_cell_state(grid_pos: Vector2, new_state: int) -> void:
	if grid_pos.x >= 0 and grid_pos.x < grid_width and grid_pos.y >= 0 and grid_pos.y < grid_height:
		grid_matrix[grid_pos.x][grid_pos.y] = new_state
		
		# Se virou obstáculo (1) ou já tem lixo (2), remove dos pontos livres de spawn
		if new_state != 0:
			available_spawn_points.erase(grid_pos)
		# Se voltou a ficar livre (0), reinsere na lista de spawn se não estiver lá
		elif new_state == 0 and not available_spawn_points.has(grid_pos):
			available_spawn_points.append(grid_pos)
	else:
		push_warning("MapGrid: Tentativa de acessar coordenada fora dos limites: ", grid_pos)

## Retorna uma coordenada global isométrica livre aleatória para o SpawnManager instanciar um item
func get_random_free_spawn_position() -> Vector2:
	if available_spawn_points.is_empty():
		push_error("MapGrid: Não há mais espaços livres disponíveis no mapa!")
		return Vector2.ZERO
		
	available_spawn_points.shuffle() # Embaralha os pontos disponíveis
	var chosen_grid_pos: Vector2 = available_spawn_points[0]
	
	# Transforma a célula lógica escolhida na posição Isométrica real de tela
	return grid_to_isometric(chosen_grid_pos)

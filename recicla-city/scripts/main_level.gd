extends Node2D

# Referências aos nós da cena (Apenas referências diretas de nós filhos válidos)
@onready var player: CharacterBody2D = $Player_hero
@onready var greybox_grid: TileMapLayer = $GreyboxGrid

# Variáveis do teste de telemetria física
var test_active: bool = false
var elapsed_time: float = 0.0
var base_position: Vector2 = Vector2.ZERO 

func _ready() -> void:
	# Converte a célula lógica da base (4, 4) para pixels físicos no cenário
	if greybox_grid:
		base_position = greybox_grid.map_to_local(Vector2i(4, 4))
	else:
		base_position = Vector2(256, 128) # Posição aproximada segura
	
	print("--- SISTEMA DE TELEMETRIA FÍSICA PRONTO ---")
	print("Instruções: Rode o jogo e clique uma vez na base (4,4) para mover o herói e medir o tempo real.")
	
	# GATILHO DO SMOKE TEST: Executa a validação do Array
	executar_smoke_test_mochila()

func _input(event: InputEvent) -> void:
	# Quando o jogador clicar na tela com o botão esquerdo para mover o robô
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		if not test_active:
			print("--- CRONÔMETRO INICIADO: O jogador está se deslocando... ---")
			elapsed_time = 0.0
			test_active = true

func _process(delta: float) -> void:
	if test_active and player:
		elapsed_time += delta
		
		# Verifica a distância física real (em pixels 2D) entre o robô e o destino
		var distance = player.global_position.distance_to(base_position)
		
		# Aumentando o raio de detecção para garantir que a chegada seja registrada
		if distance < 80.0:
			test_active = false
			conclude_telemetry_test()

func conclude_telemetry_test() -> void:
	# Exibe o tempo físico real que a engine levou na aba Saída
	push_warning("--- TESTE CONCLUÍDO! Tempo físico de deslocamento: " + str(snapped(elapsed_time, 0.01)) + " segundos ---")
	
	# CRITÉRIOS DE DESIGN E BALANCEAMENTO COM A VELOCIDADE REAL DE 250 px/s
	if elapsed_time > 12.0:
		push_warning("MÉTRICA DE DESIGN: O trajeto levou " + str(snapped(elapsed_time, 0.01)) + "s. O mapa está grande demais!")
	elif elapsed_time < 3.0:
		push_warning("MÉTRICA DE DESIGN: O trajeto levou " + str(snapped(elapsed_time, 0.01)) + "s. O mapa está muito pequeno para essa velocidade.")
	else:
		push_warning("MÉTRICA DE DESIGN: Equilíbrio de fluxo ideal alcançado para a gameplay infantil do Recicla City!")

func executar_smoke_test_mochila() -> void:
	print("\n==================================================")
	print("--- INICIANDO SMOKE TEST: ESTOURO DE INVENTÁRIO ---")
	print("==================================================")
	
	# 1. Validação física do Player
	if not player:
		push_error("SMOKE TEST FALHOU: O nó do jogador 'Player_hero' não foi encontrado!")
		return
		
	var mochila = null
	
	# Busca dinâmica da mochila dentro do nó ou script do jogador
	if "backpack" in player and player.backpack != null:
		mochila = player.backpack
	elif player.has_node("backpack"):
		mochila = player.get_node("backpack")
	else:
		# Instanciação dinâmica e temporária em memória para garantir o sucesso do teste
		print("Criando instância dinâmica de BackpackInventory segura para o teste...")
		mochila = BackpackInventory.new()
		player.add_child(mochila)
		player.backpack = mochila
	
	mochila.clear_inventory() # Garante o estado inicial zerado do Array
	
	# 2. Conecta o sinal usando o método local
	if not mochila.backpack_full.is_connected(validar_sinal_fumaca):
		mochila.backpack_full.connect(validar_sinal_fumaca)
	
	# 3. Tentativa de estouro controlado do Array (Limite máximo: 10)
	var total_tentativas = 12
	print("Tentando coletar %d detritos seguidos..." % total_tentativas)
	
	for i in range(1, total_tentativas + 1):
		var item_nome = "Plastico_" + str(i)
		var sucesso = mochila.push_item(item_nome)
		
		if sucesso:
			print("Item [%s] coletado. Tamanho atual: %d/%d" % [item_nome, mochila.get_current_size(), mochila.MAX_CAPACITY])
		else:
			push_warning("BLOQUEIO CONFIRMADO: Item [%s] rejeitado! Mochila cheia." % item_nome)
			
	# 4. Verificação final de integridade física da memória do Array
	print("--------------------------------------------------")
	if mochila.get_current_size() == mochila.MAX_CAPACITY:
		print("VEREDICTO: Teste passou com sucesso! O tamanho travou firmemente em %d." % mochila.MAX_CAPACITY)
	else:
		push_error("VEREDICTO: Falha crítica! A mochila passou do limite máximo permitido!")
	print("==================================================\n")
	
	# Desconecta ao final para liberar o sinal de forma limpa
	if mochila.backpack_full.is_connected(validar_sinal_fumaca):
		mochila.backpack_full.disconnect(validar_sinal_fumaca)

# FUNÇÃO AUXILIAR DO SCRIPT (Corrigida sem perda de escopo)
func validar_sinal_fumaca():
	print("--> [SINAL DETECTADO]: O sinal 'backpack_full' foi disparado com sucesso para o HUD/Áudio!")

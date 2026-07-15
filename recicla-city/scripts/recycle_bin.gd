# res://scripts/recycle_bin.gd
extends Area2D

@export var accepted_type: String = "Plastico" # Define o tipo aceito pela lixeira no Inspector

## Função acionada quando o jogador encosta na lixeira e pressiona o botão de descarte
func process_discharge(player: PlayerHero) -> void:
	# Executa enquanto a mochila do jogador não estiver completamente vazia
	while not player.backpack.is_empty():
		# Retira o último lixo inserido no topo da pilha (POP)
		var current_item: String = player.backpack.pop_item()
		
		if current_item == accepted_type:
			# Se o descarte foi correto: Aplica bônus
			print("Descarte correto de: ", current_item)
			# Eventos de bônus como ganho de tempo e score são acionados aqui
		else:
			# Se descartou o item errado na lixeira errada: Quebra de combo e punição
			print("Erro de separação! Descartou %s na lixeira de %s" % [current_item, accepted_type])
			# Aplica penalidade temporal e quebra o combo

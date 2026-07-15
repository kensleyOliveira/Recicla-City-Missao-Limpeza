extends Node
class_name BackpackInventory

# --- SINAIS (Signals) ---
# Emitidos para que o HUD e os sistemas de áudio se atualizem sem acoplamento rígido
signal item_added(item_type: String, current_size: int)
signal item_removed(item_type: String, current_size: int)
signal backpack_full()
signal backpack_empty()

# --- ATRIBUTOS DO SISTEMA ---
const MAX_CAPACITY: int = 10
var inventory_stack: Array[String] = [] # Array tipado que guarda os tipos de lixo

## Retorna a quantidade de itens guardados atualmente
func get_current_size() -> int:
	return inventory_stack.size()

## Verifica se a mochila atingiu o limite físico de armazenamento (10)
func is_full() -> bool:
	return inventory_stack.size() >= MAX_CAPACITY

## Verifica se a mochila está sem nenhum item
func is_empty() -> bool:
	return inventory_stack.is_empty()

## Lógica de PUSH: Adiciona um item ao topo da pilha
func push_item(item_type: String) -> bool:
	if is_full():
		backpack_full.emit() # Dispara alerta para os sistemas de HUD e Áudio
		return false # Operação negada
	
	inventory_stack.append(item_type) # Insere no fim do Array (topo da pilha)
	item_added.emit(item_type, get_current_size()) # Notifica o HUD
	return true # Sucesso na inserção

## Lógica de POP: Remove e retorna o último item inserido (LIFO)
func pop_item() -> String:
	if is_empty():
		backpack_empty.emit()
		return "" # Retorna vazio se não houver itens
	
	# pop_back() é uma função nativa e eficiente do Godot que remove e retorna o último elemento
	var removed_item: String = inventory_stack.pop_back() 
	item_removed.emit(removed_item, get_current_size()) # Notifica o HUD
	return removed_item

## Esvazia completamente a mochila (útil para limpeza rápida ou reset de fase)
func clear_inventory() -> void:
	inventory_stack.clear()
	item_removed.emit("ALL", 0)

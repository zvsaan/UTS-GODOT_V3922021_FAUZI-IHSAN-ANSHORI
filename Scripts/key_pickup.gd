extends Area2D

func _ready():
	randomize()  # Ini untuk memastikan hasil acak yang berbeda setiap kali permainan dimulai
	var rand_x = randf_range(0, get_viewport_rect().size.x)  # Posisi x secara acak di dalam jendela pandangan
	var rand_y = randf_range(0, get_viewport_rect().size.y)  # Posisi y secara acak di dalam jendela pandangan
	set_global_position(Vector2(rand_x, rand_y))


func _on_body_entered(body):
	get_tree().get_first_node_in_group("pickup_player").play()
	(body as Player).on_key_pickup()
	queue_free()

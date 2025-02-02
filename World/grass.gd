extends Node2D

func create_grass_effect():
	var GrassEffect = load("res://Effects/grass_effect.tscn")
	var grassEffect = GrassEffect.instantiate()
		
	var world = get_tree().current_scene
	world.add_child(grassEffect)
		
	grassEffect.global_position = global_position


func _on_hurtbox_area_entered(area):
	print("grass hurtbox area entered")
	create_grass_effect()
	queue_free()

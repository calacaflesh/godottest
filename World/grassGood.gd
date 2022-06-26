extends Node2D

func create_grass_effect():
	var GrassEffectScene = load("res://Effects/grass_effect.tscn")
	var grassEffect = GrassEffectScene.instance()
	var world = get_tree().current_scene
	world.add_child(grassEffect)
	grassEffect.global_position = global_position

func create_face():
	var faceScene = load("res://Effects/grass_effect.tscn")
	var face = faceScene.instance()
	var world = get_tree().current_scene
	world.add_child(face)
	face.global_position = global_position

func _on_Hurtbox_area_entered(area):
	create_grass_effect()
	queue_free()

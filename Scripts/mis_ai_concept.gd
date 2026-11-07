extends CharacterBody2D

var battle = preload("res://Scenes/battle.tscn")



func _on_area_2d_body_enter(body: Node2D) -> void:
	if "player" in body.name:
		$"../UI/AnimationPlayer".play("TransIn")
		await get_tree().create_timer(1.5).timeout
		var battleTemp = battle.instantiate()
		get_parent().add_child(battleTemp)
		queue_free()
		$"../UI/AnimationPlayer".play("TransOut")

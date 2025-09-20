extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if body.name=="Plaer":
		Global.key+=1
		queue_free()

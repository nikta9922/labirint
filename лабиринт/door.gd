extends Node2D
var Plaer_in_area=false

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name=="Plaer":
		Plaer_in_area=true


func _on_area_2d_body_exited(body: Node2D) -> void:
	if body.name=="Plaer":
		Plaer_in_area=false
func _process(delta: float) -> void:
	if Global.key >=3 and Plaer_in_area==true and Input.is_action_pressed("open_door"):
		$AnimationPlayer.play ("open_doortest")
		

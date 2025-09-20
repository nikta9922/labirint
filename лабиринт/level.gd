extends Node2D
var game_start=false
var time=300
func _on_zone_finish_body_entered(body: Node2D) -> void:
	if body.name=="Plaer":
		$CanvasLayer/MenuBar.visible=true


func _on_button_pressed() -> void:
	get_tree().reload_current_scene()


func _on_zone_started_body_exited(body: Node2D) -> void:
	game_start=true
func _process(delta: float) -> void:
	if game_start==true:
		time-=delta
		var min=int(time)/60
		var sec=int(time)%60
	
		$CanvasLayer/Label.text=str(min,":",sec)
		$CanvasLayer/Label2.text=str("key ",Global.key,"/3")
	if time<=0:
		$CanvasLayer/MenuBar2.visible=true

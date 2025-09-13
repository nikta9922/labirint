extends CharacterBody2D
var speed=75
@export var plaer:Node2D
@onready var nav_agent:= $NavigationAgent2D2 as NavigationAgent2D
func _physics_process(delta: float) -> void:
	var dir = to_local(nav_agent.get_next_path_position()).normalized()
	velocity=speed * dir
	move_and_slide() 
	print(nav_agent.get_next_path_position())
	
func make_path():
	nav_agent.target_position=plaer.global_position
	

func _on_timer_timeout() -> void:
	make_path()

extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	$AnimationPlayer.play("run")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var mouse = get_global_mouse_position()
	var angle = round(rad2deg($Sprite.global_position.direction_to(mouse).rotated(deg2rad(-90)).angle()))+180
	var step = 360 / 32 
	var direction = round(angle / step)
	$Sprite.region_rect.position.y = direction * 210

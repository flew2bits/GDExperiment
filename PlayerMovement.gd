

extends CharacterBody2D

@export var reticleHolder: Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.s
func _process(delta):
	var input = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	
	var movement = input * 100.0
	velocity = movement;
	
	var direction = velocity.angle()
	
	if (reticleHolder != null && velocity.length_squared() > 0):
		reticleHolder.rotation = direction
	
	
	move_and_slide()

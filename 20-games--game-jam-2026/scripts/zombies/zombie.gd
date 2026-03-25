extends Node2D

func _ready():
	pass
	
func destroy():
	self.queue_free()

func plantCollision(body, handler):
	handler.target = body
	handler.state = handler.States.EATING
	
func plantEaten(body, handler):
	handler.target = null
	handler.state = handler.States.MOVING
	

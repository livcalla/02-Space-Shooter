extends Node2D

var max_meteors2 = 3
var Meteor2 = load("res://Meteor/Meteor2.tscn")

func _ready():
	randomize()

func _physics_process(_delta):
	if get_child_count() < max_meteors2:
		if randf() < 0.01:
			var meteor2 = Meteor2.instance()
			meteor2.position.y = -100
			meteor2.position.x = randi() % 1024
			add_child(meteor2)

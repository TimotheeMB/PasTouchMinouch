extends KinematicBody2D
class_name Enemy

var targets:Array
var speed = 20


func _physics_process(delta):
	if closest_target()!=null:
		move_and_slide((closest_target().position - position).normalized()*speed)
	
func closest_target():
	var closest_target = null
	var min_dist = 1000
	for target in targets:
		var new_dist = (target.position-self.position).length()
		if  new_dist < min_dist:
			closest_target = target
			min_dist = new_dist
	return closest_target

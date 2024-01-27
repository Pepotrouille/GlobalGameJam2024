extends Sprite2D

@export var pos_out_of_screen : int = 1400
@export var pos_middle : int = 800

var at_max : bool = false
var is_going_down : bool = false
var in_anim : bool = false
var is_waiting : bool = true
var waiting_timer : int = 0

const SPEED : int = 1000
const MAX_WAITING : int = 200

func _ready():
	position.y = pos_out_of_screen
	position.x = 960


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if in_anim:
		if is_going_down :
			if not(is_waiting) :
				
				if not(at_max) :
					if position.y > pos_middle*1.02:
						position.y -= SPEED * delta * position.y/pos_middle
					else:
						at_max = true
				
				else:
					if position.y < pos_out_of_screen:
						position.y += SPEED * delta * position.y/pos_middle
					else:
						in_anim = false
					
			#waiting---------------------------------
			else : 
				if waiting_timer < MAX_WAITING :
					waiting_timer += 150 * delta
				else :
					is_waiting = false
		
		
		
		
		#Going up---------------------------------
		else :
			if not(at_max):
				if position.y > pos_middle:
					position.y -= SPEED * delta * position.y/pos_middle
				else:
					at_max = true
			else :
				if position.y < pos_middle*1.05:
					position.y += SPEED * delta * position.y/pos_middle
				else:
					is_going_down = true
					at_max = false


func _meme_appear():
	print("OKAY")
	at_max = false
	is_going_down = false
	is_waiting = true
	in_anim = true

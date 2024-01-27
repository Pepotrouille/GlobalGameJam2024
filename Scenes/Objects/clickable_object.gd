extends Area2D

static var hovered_object

var is_hovered = false

#Types d'objet
enum type_object {FLEUR, TOURNE_DISQUE, CROCS}

@export var type = type_object.FLEUR


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_mouse_entered():
	print("Entered")
	is_hovered = true
	hovered_object = self
	print(self)

func _on_mouse_exited():
	print("Exited")
	is_hovered = false
	if hovered_object == self:
		hovered_object = null

func _is_hovered():
	return is_hovered
	
static func what_is_hovered():
	return hovered_object



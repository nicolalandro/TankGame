extends TouchScreenButton

var b = false
var start
var correction

func _ready():
	set_process_input(true)
	start = get_node("analog").get_pos()
	connect("pressed",self,"_touchpressed")
	connect("released",self,"_touchreleased")
func _touchpressed():
	b=true
func _touchreleased():
	b=false
func _input(event):
	if(InputEvent.SCREEN_TOUCH == event.type):
		correction = Vector2(start.x-event.pos.x, start.y-event.pos.y)
	elif(InputEvent.SCREEN_DRAG == event.type):
		if(b):
			get_node("analog").set_pos(event.pos+correction)
	if (!b): #if e non elif per i cellulari
		get_node("analog").set_pos(start)
extends Node2D

func _notification(what):
	if what == MainLoop.NOTIFICATION_WM_QUIT_REQUEST:
		print("\nBackAndroidButton")
		get_tree().change_scene("res://menu/menu.tscn")

func _ready():
	get_tree().set_auto_accept_quit(false)
	get_node("+").connect("pressed",self,"_on_volume_up_button_pressed")
	get_node("-").connect("pressed",self,"_on_volume_down_button_pressed")
	
func _on_volume_up_button_pressed():
	get_node("ProgressBar").set_value(get_node("ProgressBar").get_value()+10)
func _on_volume_down_button_pressed():
	get_node("ProgressBar").set_value(get_node("ProgressBar").get_value()-10)
extends Spatial

func _notification(what):
	if what == MainLoop.NOTIFICATION_WM_QUIT_REQUEST:
		print("\nBackAndroidButton")
		get_tree().change_scene("res://menu/menu.tscn")

func _ready():
	get_tree().set_auto_accept_quit(false)

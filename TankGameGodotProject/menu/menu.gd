extends Node2D

func _ready():
	get_node("play").connect("pressed",self,"_on_play_button_pressed")
	get_node("option").connect("pressed",self,"_on_option_button_pressed")
	get_node("exit").connect("pressed",self,"_on_exit_button_pressed")

func _on_play_button_pressed():
	print("Play")
	get_node("selection_tank").set_pos(Vector2(15,-26))
	get_node("selection_tank").show();
	get_tree().change_scene("res://game/tank_free_mode.scn")
func _on_option_button_pressed():
	print("Option")
	get_node("selection_tank").set_pos(Vector2(15,72))
	get_node("selection_tank").show();
	get_tree().change_scene("res://option/option.tscn")
func _on_exit_button_pressed():
	print("Exit")
	get_node("selection_tank").set_pos(Vector2(15,174))
	get_node("selection_tank").show();
	get_tree().call_deferred("quit");
extends Node2D

# Called when the node enters the scene tree for the first time.
var music: AudioStreamPlayer

# Called when the node enters the scene tree for the first time.
func _ready():
	music = AudioStreamPlayer.new()
	add_child(music)
	music.stream = load("res://Assets/Sound/Mainmenu.mp3")
	music.play()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_texture_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/Level1.tscn")

func _on_sprite_2d_3_pressed():
	get_tree().quit()

func _on_sprite_2d_4_pressed():
	get_tree().change_scene_to_file("res://Scenes/Music.tscn")

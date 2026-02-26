extends CharacterBody2D

# play() to play the anim
#void play(name: StringName = &"", custom_blend: float = -1, custom_speed: float = 1.0, from_end: bool = false) 
var anim_player
var reeling
var click_count

func _ready():
	anim_player = get_node("AnimationPlayer")
	reeling = false
	click_count = 0

func _process(delta):
	if Time.get_ticks_msec() % 200 == 67 and not reeling:
		anim_player.play("idle")
		reeling = true
	elif Time.get_ticks_msec() % 700 == 5 and reeling:
		#in progress
		anim_player.play("reel")
		reeling = false

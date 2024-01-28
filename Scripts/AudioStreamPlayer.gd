extends AudioStreamPlayer

func play_sound(audio):
	self.stream = audio
	self.play()

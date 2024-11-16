
x += 0.01;
if alarm[0] <= 0{
	alarm[0] = 180
}

	if alarm[0] > 0{
		image_alpha += 0.001
	}
	
	if x >= 598{
		image_alpha -= 0.002
	}
	

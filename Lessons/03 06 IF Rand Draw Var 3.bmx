
' Draw shape with random location
' Remove Cls to let drawings build up
' Use random color
' Use ranodm size

Global gWidth = 500, gHeight = 500, gDepth = 0
Graphics gWidth, gHeight, gDepth 

Global brush = 1

Repeat
	If KeyHit(KEY_SPACE) Then Cls
	If KeyHit(KEY_1) Then brush = 1
	If KeyHit(KEY_2) Then brush = 2
	If KeyHit(KEY_3) Then brush = 3
	
	If brush = 1 Then
		' red, green, blue
		SetColor Rand(0,255), Rand(0,255), Rand(0,255)
		
		x = Rand(0,gWidth/50)*50 + 10
		y = Rand(0,gHeight/50)*50 - 15
		w = 40
		h = 40
		DrawOval x, y, w, h
	End If
	
	If brush = 2 Then
		' red, green, blue
		SetColor Rand(0,255), Rand(0,255), Rand(0,255)
	
		x = Rand(0,gWidth/50)*50 
		y = Rand(0,gHeight/50)*50
		w = 10
		h = 50
		DrawRect x, y, w, h
	End If
	
	If brush = 3 Then 
		' red, green, blue
		SetColor Rand(0,255), Rand(0,255), Rand(0,255)
	
		x = Rand(0,gWidth/50)*50 
		y = Rand(0,gHeight/50)*50 + 25 
		w = 50
		h = 10
		DrawRect x, y, w, h
	End If

	Flip

Until KeyHit(KEY_ESCAPE)


'Exercise

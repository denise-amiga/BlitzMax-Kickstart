
' Draw rect with random location
' Remove Cls to let drawings build up
' Use random color
' Use ranodm size

Global gWidth = 500, gHeight = 500, gDepth = 0
Graphics gWidth, gHeight, gDepth 


Repeat
	If KeyHit(KEY_SPACE) Then Cls
	
	' red, green, blue
	SetColor Rand(0,255), Rand(0,255), Rand(0,255)
	
	If MouseDown(1) Then
		' x, y, width, height
		DrawRect MouseX(), MouseY(), 20, 20
		DrawRect MouseX()-30, MouseY()+30, 20, 20
		DrawRect MouseX()+30, MouseY()+30, 20, 20
		DrawRect MouseX()-30, MouseY()-30, 20, 20
		DrawRect MouseX()+30, MouseY()-30, 20, 20
	End If
	
	Flip

Until KeyHit(KEY_ESCAPE)


'Exercise
' Draw other shapes
' Draw multiple at mouse location
' Different random color depending on mouse location
' Use random location rather than mouse location
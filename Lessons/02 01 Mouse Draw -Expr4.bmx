
' Draw shape with random location
' Remove Cls to let drawings build up
' Use random color
' Use ranodm size
' replacing variables with expressions

Global gWidth = 500, gHeight = 500, gDepth = 0
Graphics gWidth, gHeight, gDepth 

Repeat
	'Cls
	
	SetColor Rand(0,255), Rand(0,255), Rand(0,255)
	
	' x, y, width, height
	DrawOval MouseX()+Rand(5,20), MouseY()+Rand(5,20), Rand(5,10), Rand(5,10)
	DrawOval MouseX()-Rand(5,20), MouseY()-Rand(5,20), Rand(5,10), Rand(5,10)
	DrawOval MouseX()-Rand(5,20), MouseY()+Rand(5,20), Rand(5,10), Rand(5,10)
	DrawOval MouseX()+Rand(5,20), MouseY()-Rand(5,20), Rand(5,10), Rand(5,10)

	Flip

Until KeyHit(KEY_ESCAPE)


'Exercise
' Draw other shapes
' Draw multiple at mouse location

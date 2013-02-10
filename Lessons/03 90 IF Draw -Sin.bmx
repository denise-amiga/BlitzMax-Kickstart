
' Display a wave using the trig function Sin
' Values are offset and scaled to fill up the screen

Global gWidth = 640, gHeight = 480, gDepth = 0
Graphics gWidth, gHeight, gDepth 

Global x = 0

SetColor 255, 255, 255	' White

Repeat
	
	shalf = gHeight/2
	y =  shalf + Sin(x)*shalf 
	'Print "Y "+y
	
	DrawRect x, y, 1, 1
	
	x = x + 1
	If x > gWidth Then
		x = 0
	EndIf
	
	'Print "x "+x
	Flip
	
Until KeyHit(KEY_ESCAPE)


' Exercises
' 	Change draw shape
' 	Change Color
'	Change x spacing



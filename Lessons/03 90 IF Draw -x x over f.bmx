
' Graph y = (x/f)*(x/f), with f inscreasing
' Display screen after each every pixel, slow

Global gWidth = 640, gHeight = 480, gDepth = 0
Graphics gWidth, gHeight, gDepth 

SetColor 255, 255, 255

Global  x = 0
Global f = 1

Repeat 
	
	Y = 0;
	xx = x;
	
	y = ( xx / f) * (xx / f);
	'Print "Y "+y
	
	DrawRect x, y, 1, 1
	
	x = (x + 1) Mod gWidth
	
	'Print "x "+x
	
	If y > gHeight Then
		x = 0
		f = f + 1
	EndIf
	
	Flip
Until KeyHit(KEY_ESCAPE)

' Exercises
'	Change color, shape
'	Use For to draw faster

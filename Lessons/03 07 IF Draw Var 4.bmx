
' Move a circle based on arrow keys
' Mouse scroll wheel changes size of circle ** changes to keys**
' Random color on circle
' Space key clears screen

Global gWidth = 640, gHeight = 480, gDepth = 0
Graphics gWidth, gHeight, gDepth 

' Start in the middle of the screen
Global x = gWidth / 2
Global y = gHeight / 2

' Size of circle/oval
Global w = 50
Global h = 50 

SetBlend( ALPHABLEND )
SetAlpha( 0.5 )

Global dir = 1

Repeat
	If KeyHit(KEY_SPACE) Then Cls	
	If Rand(1,100) = 1 Then SetColor( Rand(0,255), Rand(0,255), Rand(0,255))
	
	If Rand(1,20) = 1 Then dir = Rand(1,4)	
	If dir = 1 Then x = x - 1
	If dir = 2 Then x = x + 1
	If dir = 3 Then y = y - 1
	If dir = 4 Then y = y + 1

	If x < 0 Then x = 0
	If x > gWidth Then x = gWidth
	If y < 0 Then y = 0
	If y > gHeight Then y = gHeight
	
	DrawOval( x, y, w, h )
	
	Flip
Until KeyHit(KEY_ESCAPE)


' Exercises:
' Wrap around at edges
' Change speed
' Have speed control by other keys
' Have other Keys to change color ranges

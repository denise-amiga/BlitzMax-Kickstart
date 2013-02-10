
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

Repeat
	If KeyHit(KEY_SPACE) Then Cls	

	If KeyDown(KEY_LEFT) Then x = x - 1
	If KeyDown(KEY_RIGHT) Then x = x + 1
	If KeyDown(KEY_UP) Then y = y - 1
	If KeyDown(KEY_DOWN) Then y = y + 1
	
	SetColor( Rand(0,255), Rand(0,255), Rand(0,255))
	w = w + MouseZ()
	h = h + MouseZ()
	DrawOval( x, y, w, h )
	
	Flip
Until KeyHit(KEY_ESCAPE)


' Exercises:
' Wrap around at edges
' Change speed
' Have speed control by other keys
' Have other Keys to change color ranges

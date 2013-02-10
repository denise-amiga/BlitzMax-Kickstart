
' Draw diameters of a cirle, random location and color
' 	Use polar coordinates to find x,y for circle

Global gWidth = 500, gHeight = 500, gDepth = 0
Graphics gWidth, gHeight, gDepth 

' Setup to draw in center of screen
Global r = gHeight/2
Global orgX = gWidth /2
Global orgY = gHeight/2

' Range for random width of the line
Global widthRangeFrom  = 5
Global widthRangeTo = 15

' Set mode to get colors to blend together when drawn
SetBlend( ALPHABLEND )
'SetAlpha( 0.1 ) ' Interesting slow build
SetAlpha( 0.3 )

Repeat
	'Cls	

	SetColor Rand(0,255), Rand(0,255), Rand(0,255)
	'SetColor 255, 255, 255
	
	ang = Rand(0,360)
	x1 = r * Sin(ang)
	y1 = r * Cos(ang)
	x2 = -x1
	y2 = -y1

	SetLineWidth Rand(widthRangeFrom, widthRangeTo)

	DrawLine orgX+x1, orgY+y1, orgX+x2, orgY+y2
	
	If KeyDown(KEY_SPACE) Then Cls
	
	Flip
Until KeyHit(KEY_ESCAPE)





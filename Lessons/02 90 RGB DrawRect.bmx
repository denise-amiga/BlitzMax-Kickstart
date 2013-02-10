
' Draw RGB overlapping rectangles
' Hit SPACE key to change colors

Global gWidth = 500, gHeight = 500, gDepth = 0
Graphics gWidth, gHeight, gDepth 

Global redc = 255
Global greenc = 255
Global bluec = 255

Global a = gWidth / 6
Global b = gHeight / 3

While Not KeyHit(KEY_ESCAPE)
	Cls	

	SetColor( redc, 0, 0)
	DrawRect(0, 0, a*2, b*3)

	SetColor( redc, greenc, 0)
	DrawRect(2*a, 0, a*2, b)

	SetColor( 0, greenc, 0)
	DrawRect(a*4, 0, a*2, b*3)

	SetColor( redc, 0, bluec)
	DrawRect(a, b, a, b )
	
	SetColor( redc, greenc, bluec )
	DrawRect( a*2, b, a*2, b)
	
	SetColor( 0, greenc, bluec)
	DrawRect( a*4, b, a, b )
	
	SetColor( 0, 0, bluec)
	DrawRect( a, 2*b, a*4, b)
	
	SetColor( 255, 255, 255)
	DrawText "redc:"+redc+" greenc:"+greenc+" bluec:"+bluec, 5, gHeight-20

	If KeyHit(KEY_SPACE) Then
		redc = Rand(0,255)
		greenc = Rand(0,255)
		bluec = Rand(0,255)
	EndIf
	
	Flip
Wend

' Exercise:
'	Label each rect with the color rgb values

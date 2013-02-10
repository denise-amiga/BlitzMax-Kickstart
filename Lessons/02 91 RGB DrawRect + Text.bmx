
' Draw rgb overlapping rectangle with labels.
' Hit SPACE key to change colors

Global gWidth = 500, gHeight = 500, gDepth = 0
Graphics gWidth, gHeight, gDepth 

Global redc = 255
Global greenc = 255
Global bluec = 255

Global a = gWidth / 6
Global b = gHeight / 3
Global txh = TextHeight("X")

While Not KeyHit(KEY_ESCAPE)
	Cls	

	SetColor( redc, 0, 0)
	DrawRect(0, 0, a*2, b*3)
	SetColor( 255, 255, 255)
	DrawText "R: "+redc, a/2, b/2
	DrawText "G: 0", a/2, b/2 + txh
	DrawText "B: 0", a/2, b/2 + 2*txh
	
	SetColor( redc, greenc, 0)
	DrawRect(2*a, 0, a*2, b)
	SetColor( 255, 255, 255)
	DrawText "R: "+redc, a*2+a/2, b/2
	DrawText "G: "+greenc, a*2+a/2, b/2 + txh
	DrawText "B: 0", a*2+a/2, b/2+2*txh

	SetColor( 0, greenc, 0)
	DrawRect(a*4, 0, a*2, b*3)
	SetColor( 255, 255, 255)
	DrawText "R: 0", a*4+a/2, b/2
	DrawText "G: "+greenc, a*4+a/2, b/2 + txh
	DrawText "B: 0", a*4+a/2, b/2 + 2*txh
	
	SetColor( redc, 0, bluec)
	DrawRect(a, b, a, b )
	SetColor( 255, 255, 255)
	DrawText "R: "+redc, a+a/8, b+b/2
	DrawText "G: 0", a+a/8, b+b/2+txh
	DrawText "B: "+bluec, a+a/8, b+b/2 + 2*txh

	
	SetColor( redc, greenc, bluec )
	DrawRect( a*2, b, a*2, b)
	SetColor( 255, 255, 255)
	DrawText "R: "+redc, a*2+a/2, b+b/2
	DrawText "G: "+greenc, a*2+a/2, b+b/2 +txh
	DrawText "B: "+bluec, a*2+a/2, b+b/2 + 2*txh
	
	SetColor( 0, greenc, bluec)
	DrawRect( a*4, b, a, b )
	SetColor( 255, 255, 255)
	DrawText "R: 0", a*4+a/8, b+b/2
	DrawText "G: "+greenc, a*4+a/8, b+b/2 +txh
	DrawText "B: "+bluec, a*4+a/8, b+b/2 + 2*txh
	
	SetColor( 0, 0, bluec)
	DrawRect( a, 2*b, a*4, b)
	SetColor( 255, 255, 255)
	DrawText "R: 0", a*2+a/2, b*2+b/2
	DrawText "G: 0", a*2+a/2, b*2+b/2 + txh
	DrawText "B: "+bluec, a*2+a/2, b*2+b/2 + 2*txh
		
	SetColor( 255, 255, 255)
	DrawText "redc:"+redc+" greenc:"+greenc+" bluec:"+bluec, 5, gHeight -txh

	If KeyHit(KEY_SPACE) Then
		redc = Rand(0,255)
		greenc = Rand(0,255)
		bluec = Rand(0,255)
	EndIf
	
	Flip
Wend

' Exercises:
'	Replace DrawText calls with function to make code more readable
'

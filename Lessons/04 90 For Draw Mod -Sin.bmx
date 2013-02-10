
' Display a wave using the trig function Sin
' a full screen of waves is draw before been displayed
' wave is shift after each screen full
' SPACE key clears the screen
' with wider stroke


Global gWidth = 640, gHeight = 480, gDepth = 0
Graphics gWidth, gHeight, gDepth 


Global x = 0
Global shift = 0

SetColor 255, 255, 255

Repeat
	
	For x = 0 To gWidth
		
		y = gHeight /2 + Sin(x)*gHeight /2
		'Print "Y "+y
		
		SetColor Rand(0,255), Rand(0,255), Rand(0,255)
		
		DrawRect (x+shift) Mod gWidth , y, 1, 10
		
	Next
	
	If KeyHit(KEY_SPACE) Then Cls
	
	shift = shift + 1
	
	'Print "x "+x
	Flip
Until  KeyHit(KEY_ESCAPE)








' Draw single pixel line on x-axis
' Draw single pixel line on y-axis
' Random color on each line
' Random stepping
' Random x vs. y

Global gWidth = 500, gHeight = 500, gDepth = 0
Graphics gWidth, gHeight, gDepth 

SeedRnd MilliSecs()

Global x = 0
Global y = Rand(0, gHeight)

Global x2 = 0
Global y2 = Rand(0, gHeight)

SetColor Rand(0,255), Rand(0,255), Rand(0,255)

Global doX = Rand(1,2)

'Global AppTitle:String, AppFile:String
AppTitle = AppFile[AppFile.findLast("/")..]

Repeat
	'Cls	
	DrawText AppTitle, 0, 0
	
	If doX = 1 Then
		DrawRect x, y, 1, 1
	
		x = x + Rand(1,9)
		If x > gWidth Then
			x = 0
			y = Rand(0, gHeight)
			SetColor Rand(0,255), Rand(0,255), Rand(0,255)
			doX = Rand(1,2)
		EndIf
	Else
		DrawRect x2, y2, 1, 1
		
		y2 = y2 + Rand(1,9)
		If y2 > gHeight Then
			y2 = 0
			x2 = Rand(0, gWidth)
			SetColor Rand(0,255), Rand(0,255), Rand(0,255)
			doX = Rand(1,2)
		End If
	End If

	Flip
Until KeyHit(KEY_ESCAPE)

' Exercises:
'	Vary the width of each line
'	vary the color more frequently
'	Try other shapes

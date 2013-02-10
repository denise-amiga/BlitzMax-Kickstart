
' Draw single rect at mouse location

Global gWidth = 640, gHeight = 480, gDepth = 0
Graphics gWidth, gHeight, gDepth 


While Not KeyHit(KEY_ESCAPE)
	If KeyHit(KEY_SPACE) Then Cls	
	If KeyHit(KEY_S) Then SaveTheScreen("temp2.png", 0, 0, gWidth, gHeight)
	
	SetColor Rand(0,255), Rand(0,255), Rand(0,255)
	
	x = MouseX() 
	y = MouseY()
	w = Rand(1,10)
	h = Rand(1,10)
	
	If MouseDown(1) Then	
		DrawRect( x, y, w, h )
	EndIf
	
	Flip
Wend


' Save the entire screen to a file
Function SaveTheScreen(fileName:String, x:Int, y:Int, width:Int, height:Int)
		
	Local pixm: TPixmap = GrabPixmap( x, y, width, height )
	Local url:String = fileName
	Local compression:Int = 5
	
	SavePixmapPNG( pixm, url, compression )
	
End Function



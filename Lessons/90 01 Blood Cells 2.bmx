
' Blood Cells.
' 	red blood cells battle virus.


Global gWidth = 500, gHeight = 500, gDepth = 0
Graphics gWidth, gHeight, gDepth 

Global gameDone = 0
Global score = 0, level = 0, totalScore = 0

InitGame()

'ShowInstructions()

Repeat
	Cls	

	CheckGame()
	
	Flip
Until  gameDone  

' Our hero, a single red blood cell
Global hero :TRedCell

' The Area on the screen for cells to play 
Type TPlayArea
	Global basicWidth = 50
	Global borderHeight = 4
	Global topMargin
	Global leftMargin = 10
	Global x1
	Global y1
	Global x2
	Global y2
	Global y1_border
	Global y1_borderBottom 
	Global y2_border
	Global x1_gate
	Global heroStart_x
	Global heroStart_y
	Global lastTime
	
	Function Init()
		topMargin = basicWidth + borderHeight
		x1 = leftMargin 
		y1 = topMargin
		x2 = gWidth - leftMargin 
		y2 = gHeight - topMargin
		y1_border = y1 - borderHeight 
		y2_border = y2
		y1_borderBottom = y1_border + borderHeight
		x1_gate = gWidth/2 - basicWidth/2
		heroStart_x = x1_gate
		heroStart_y = y2_border + borderHeight
		lastTime = MilliSecs()
	End Function
	
	Function Width()
		Return x2 - x1
	End Function
	
	Function Height()
		Return y2 - y1
	End Function
	

	Function StatusDisplay()
		Local nowTime = MilliSecs()
		Local diffTime = nowTime - lastTime
		lastTime = nowTime

		Local x = leftMargin
		Local y = y2_border + borderHeight + 2
		Local s:String
		s = "Level: "+level 
		s = s + " Score: "+totalScore
		's = s + " dt: "+diffTime
		SetColor( 255, 255, 255)
		DrawText s, x, y
		s = "Virsus: "+TVirusManager.Count()
		DrawText s, x, y + 20
	End Function
		
	Function UpdateBorders()
		SetColor( 128, 0, 0)
		DrawRect( x1 , y1_border, Width(), borderHeight)
		SetColor( 0, 128, 0)
		DrawRect( x1, y2_border, x1_gate - x1, borderHeight)
		DrawRect( x1_gate-borderheight, y2_border, borderHeight, gHeight - y2_border)
		DrawRect( x1_gate+basicWidth, y2_border, borderHeight, gHeight - y2_border)
		DrawRect( x1_gate+basicWidth, y2_border, x2-(x1_gate+basicWidth), borderHeight)
		
		' Draw a red cell for each score on this level
		For Local i = 1 To score
			SetColor( 128, 0, 0)
			Local w = basicWidth
			Local x = (i - 1)*(w + borderHeight)
			If x+w < x2 Then
				Local y = y1_border - w
				DrawOval( x, y, w, w)
			Else
				score = 0
				level = level + 1
				TVirusManager.AddOne()
				Return
			EndIf	
		Next
	End Function
	
End Type

' Draw indented text
Type TDrawText
	Global textLine
	Global textEdge
	
	Function Init()
		textLine = 10
		textEdge = 20
	End Function
	
	Function NextLine()
		textLine = textLine + 30
		Return textLine
	End Function
	
	Function NextEdge()
		textEdge = textEdge + 10
		Return textEdge
	End Function
	
	Function Draw( text:String )
		DrawText text, NextEdge(), NextLine()
	End Function

End Type

' Display the instructions, nothing fanc just some text.
Function ShowInstructions()
	Repeat
		Cls
		
		TDrawText.Init()
		
		' Change the color sligtly for some visual interest
		SetColor(255, 255, Rand(0,255) )
		TDrawText.Draw "Use arrow keys to move the red blood cells " 
		
		TDrawText.Draw "Hit ESC to end game"
		
		TDrawText.Draw "Hit space to continue"

		SetColor( 255, 0, Rand(0,255)  )
		TDrawText.Draw "Your mission is get the red blood cells "
		TDrawText.Draw " to top the screen"
		TDrawText.Draw "Avoid the blue virus cells "
		TDrawText.Draw " they will reduce your health "
		
		Flip	
	Until KeyHit(KEY_SPACE) Or KeyHit(KEY_ESCAPE)
	
End Function

' A Red Cell has motion controlled by the keyboard
Type TRedCell
	Field x, y	' Current location
	Field w, h	' size
	Field speed	' How fast we can move
	Field health ' Our heath level 0..255
	Field inset ' heath is display as inset oval by this amount
	Field damage ' how much to reduce heath 
	Field lockMove
	
	Function Create:TRedCell() 
		Local me : TRedCell = New TRedCell;
		me.Init()
		Return me
	End Function
		
	Method Init()
		'x = TPlayArea.x1 + TPlayArea.Width() / 2
		'y = TPlayArea.y1 + TPlayArea.Height() / 2
		x = TPlayArea.heroStart_x
		y = TPlayArea.heroStart_y
		w = TPlayArea.basicWidth
		h = w
		speed = 5
		health = 255
		inset = 5
		damage = 1
		lockMove = False
	End Method
	
	Method DrawSelf()
		SetColor( 255, 0, 0 )
		DrawOval( x, y, w, h )
		SetColor( health, 0, 0)
		DrawOval( x+inset, y+inset, w-inset*2, h-inset*2)
	End Method
	
	Method CheckMove()
		If lockMove = False Then 
			CheckKeys()
		Else
			If AnyMoveKeys() = False Then
				lockMove = False
			EndIf
		EndIf
		DrawSelf()
		ChecklockMove()
		CheckCheats()
	End Method
	
	Method CheckKeys()
		If KeyDown(KEY_LEFT) Then ChangeX( -speed )
		If KeyDown(KEY_RIGHT) Then ChangeX( speed )
		If KeyDown(KEY_UP) Then ChangeY( -speed )
		If KeyDown(KEY_DOWN) Then ChangeY( speed )
	End Method
	
	Method AnyMoveKeys()
		If KeyDown(KEY_LEFT) Then Return True
		If KeyDown(KEY_RIGHT) Then Return True
		If KeyDown(KEY_UP) Then Return True
		If KeyDown(KEY_DOWN) Then Return True
		Return False;
	End Method
	
	Method ChangeX( d )
		newx = x + d
		If newx < TPlayArea.x1 Then newx = TPlayArea.x1
		If newx+w > TPlayArea.x2 Then newx = TPlayArea.x2 - w
		x = newx
	End Method
	
	Method ChangeY( d )
		newy = y + d
		If newy < TPlayArea.y1 Then newy = TPlayArea.y1
		If newy+h > TPlayArea.y2 Then newy = TPlayArea.y2 - h
		y = newy
	End Method
	
	Method TakeDamage()
		'DebugStop()
		health = health - damage
		If health < 0 Then health = 0
	End Method
	
	Method ChecklockMove()
		If y <= TPlayArea.y1_borderBottom Then 
			If lockMove = False Then
				score = score + 1
				totalScore = totalScore + 1
				Init()
				lockMove = True
			EndIf
		EndIf	
	End Method
	
	Method CheckHealth()
		If y <= TPlayArea.y1_borderBottom Then 
			health = health + 1
		End If	
		If y+w > TPlayArea.y2_border Then 
			health = health + 1
		End If	
		If health > 255 Then health = 255
	End Method
	
	Method CheckCheats()
		If KeyDown(KEY_F) Then speed = speed + 1
		If KeyDown(KEY_S) Then health = 255
	End Method
		
End Type

' Virus - the bad guys
' Virus moves with random speed and direction, will do damage to hero cell
Type TVirus
	Field x, y	' Current location
	Field w, h	' size
	Field speedx, speedy	' How fast we're moving on each axis
		
	Function Create:TVirus() 
		Local me : TVirus= New TVirus;
		me.Init()
		Return me
	End Function
		
	Method Init()
		x = TPlayArea.x1
		y = Rand(TPlayArea.y1, TPlayArea.y2)
		w = TPlayArea.basicWidth
		h = 20
		speedx = Rand(1,10)
		speedy = 0
	End Method
	
	Method DrawSelf()
		SetColor( 0, 0, 255)
		DrawRect( x, y, w, h )
	End Method
	
	Method CheckMove()
		ChangeX()
		ChangeY()
		DrawSelf()
	End Method
	
	Method ChangeX( )
		newx = x + speedx
		' Check if we are at edge of play area
		If newx < TPlayArea.x1 Or newx+w > TPlayArea.x2 Then 
			' Change direction
			speedx = -speedx
			newSpeedx = Rand(1,10)
			If speedx < 0 Then
				speedx = -newSpeedx
			Else
				speedx = newSpeedx
			EndIf
			newx = x
			' Move closer to hero
			If hero.y < y And y > TPlayArea.y1+3 Then
				y = y - Rand(1,3)
			EndIf
			If hero.y > y And y < TPlayArea.y2-3 Then
				y = y + Rand(1,3)
			EndIf
			'y = Rand(TPlayArea.y1, TPlayArea.y2)
		EndIf
		x = newx
	End Method
	
	Method ChangeY( )
		newy = y + speedy
		If newy < TPlayArea.y1 Or newy+h > TPlayArea.y2  Then 
			speedy = -speedy
		EndIf
		y = newy
	End Method
	
	Method CheckHeroDamage()
		If RectsIntersect(x, y, w, h, hero.x, hero.y, hero.w, hero.h) Then
			hero.TakeDamage()
		EndIf
	End Method
End Type

' Mange a bung of virus
Type TVirusManager
	Const maxVirus = 5;
	
	Global virusList:TList
	
	Function Init()
		virusList = CreateList()
		For Local i = 0 To maxVirus-1
			ListAddLast( virusList, TVirus.Create() )
		Next
	End Function
	
	Function CheckMove()
		For Local v:TVirus = EachIn virusList
			v.CheckMove()
			v.CheckHeroDamage()
		Next
	End Function
	
	Function AddOne()
		ListAddLast( virusList, TVirus.Create() )
	End Function
	
	Function Count()
		Return CountList( virusList)
	End Function
	
End Type

' Return true if one rectangle intersects another
Function RectsIntersect(x1, y1, w1, h1, x2, y2, w2, h2)
	If PointIntersectRect(x1, y1, x2, y2, w2, h2) Then Return True
	If PointIntersectRect(x1+w1, y1, x2, y2, w2, h2) Then Return True
	If PointIntersectRect(x1+w1, y1+h1, x2, y2, w2, h2) Then Return True
	If PointIntersectRect(x1, y1+h1, x2, y2, w2, h2) Then Return True	
	Return False
End Function

' Return true if the point interects the rectangle
Function PointIntersectRect(x1, y1, x2, y2, w2, h2)
	If x1 >= x2 And x1 < x2+w2 And y1 >= y2 And y1 < y2+h2 Then Return True
	Return False
End Function

' Setup all stuff for the game
Function InitGame()
	SeedRnd( MilliSecs() )	' Make Rand start of different each run
	TPlayArea.Init();
	hero = TRedCell.Create();
	TVirusManager.Init();
End Function

' Check all objects for the game
Function CheckGame()
	
	TPlayArea.UpdateBorders()
	
	hero.CheckMove()
	TVirusManager.CheckMove()
	TPlayArea.StatusDisplay()
	
	If KeyHit(KEY_ESCAPE) Then gameDone = 1
End Function

' Playoff not very interesting
' 	virus should knock red cell of path
'	more visual feed back for play off
' 	consider moving more than one red cell across
'	conider slow moving green cells that red has to heal


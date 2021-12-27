$d::

While ( GetKeyState( "d","P" ) ) { 

	Send, {t down}
	Send, {h down}
Send, {Enter down}

	Sleep, 5

	Send, {t Up}
	Send, {h Up}
Send, {Enter Up}

	Sleep, 30

   } 

Return
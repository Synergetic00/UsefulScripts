$d::

   While ( GetKeyState( "d","P" ) ) { 

      Send, {d down}
Send, {a down}

      Sleep, 5

      Send, {d Up}
Send, {a Up}

      Sleep, 20

   } 

Return
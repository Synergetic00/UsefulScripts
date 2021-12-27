^h::

number = 160

Loop, 200
{
send % chr(number)
send, {enter}

number++
Sleep, 1100 ;
}
return
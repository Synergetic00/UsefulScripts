F6:: ;On/Off with key F1
SendEactive := !SendEactive
If SendEactive
	SetTimer SendE, 100 ;spams every 200ms
Else
	SetTimer SendE, Off
Return
SendE: ;spams key e
	send {E down}
	sleep, 50
	send {E up}
Return
F6::

send {E down}
sleep, 20
send {E up}

sleep, 4300

start_time := A_TickCount
time_to_run := 4700
end_time := start_time + time_to_run

while (A_tickcount < end_time)
{
	send {Enter down}
	sleep, 10
	send {Enter up}
	Sleep, 50 ;make some delay
}

;until GetKeyState("Numpad5", "P")
sleep, 10000
send {Enter down}
sleep, 10
send {Enter up}

Return
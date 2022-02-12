;ooi galera!
;hoje criei um programinha que vai avisar a cada mudança de hora, por exemplo, 1:00, 10:00, 16:00, 22:00 e por ai vai...
;e um bônus, vai ser com áudio!

MsgBox %A_Min%
Loop, 24
{
	Loop
	{
		if (A_Min = 00)
		{
			hora = %A_Hour%:%A_Min%
			ComObjCreate("SAPI.SpVoice").Speak(hora)
			break
		}
	}
	Sleep, 60000
}
return

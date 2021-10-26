	ImpPantalla MACRO texto
		local mensaje					;solo existe cuando se use imppantalla
		.data
			mensaje db texto,0

		.code
			push edx
			mov edx, offset mensaje
			call writestring
			pop edx
	ENDM

		ImpPantallaLn MACRO texto
		local mensaje					;solo existe cuando se use imppantalla
		.data
			mensaje db texto,0

		.code
			push edx
			mov edx, offset mensaje
			call writestring
			call crlf
			pop edx
	ENDM
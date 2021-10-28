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

	Suma_V1 MACRO ; cuando los valores que usara el macro son almacenados en registros en el
					; programa principal y estos son consultados o accedidos desde el MACRO

		; sumar a los registros ebx, ecx
		
		.data
		.code

		add ebx,ecx; el valor resultado estara en ebx

	ENDM

		Suma_V2 MACRO a,b 

			; sumar a los registros ebx, ecx que contendran al valor de a y b respectivamente
		
		.data
		.code

		push ecx ; respaldar el valor de ecx

		mov ebx,a
		mov ecx,b

		add ebx,ecx; el valor resultado estara en ebx

		pop ecx ; recupero el valor original de ecx para que el usuario pueda usarlo sin problema

	ENDM

			Suma_V3 MACRO a,b 
		
		.data

		varA dword a
		varB dword b

		.code

		mov ebx,varA

		add ebx,varB; el valor resultado estara en ebx

	ENDM
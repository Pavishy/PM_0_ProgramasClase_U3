TITLE Obtenci�n del �rea y el per�metro de un 
;rect�ngulo ingresando su base y altura

;DESCRPICI�N Obtener del �rea y el per�metro 
; de un rect�ngulo ingresando su base y altura
;Objetivo:  
; Mtro. Alejandro Garcia
; Autore(s): Escalante Figueroa Pablo Angel
; Semestre: 8vo Semestre ISC
;FIN DESCRIPCI�N

INCLUDE Irvine32.inc
INCLUDE MACROS.inc

.data
; �rea de Declaraci�n de Variables

.code

	mainw PROC	

		ImpPantalla_LecturaLn "Ingresa la base: "

		ImpPantalla "Ingresa la altura: "

		mov ecx, eax
		LeeNTeclado
		mul ecx

		Salto

		ImpPantalla "El area es: "
        EscribirNUM
		
		Suma_V2 ecx, eax
		mov eax,ebx
		mov ecx, 2
		mul ecx

		Salto
		Salto

		ImpPantalla "El perimetro es: "
        EscribirNUM
		Salto

		exit	
	
	mainw ENDP
	END mainw
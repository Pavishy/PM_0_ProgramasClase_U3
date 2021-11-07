TITLE Obtención del área y el perímetro de un 
;rectángulo ingresando su base y altura

;DESCRPICIÓN Obtener del área y el perímetro 
; de un rectángulo ingresando su base y altura
;Objetivo:  
; Mtro. Alejandro Garcia
; Autore(s): Escalante Figueroa Pablo Angel
; Semestre: 8vo Semestre ISC
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc
INCLUDE MACROS.inc

.data
; Área de Declaración de Variables

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
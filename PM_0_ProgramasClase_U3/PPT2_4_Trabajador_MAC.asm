TITLE Salario Trabajador

;DESCRPICI�N
;Objetivo: abordar a la instruccion ADD como parte de las instrucciones
; de Transferencia de datos
; Mtro. Alejandro Garcia
; Autore(s): Hern�ndez De Jes�s Pedro Esteven
; Semestre: 8vo Semestre ISC
;FIN DESCRIPCI�N

INCLUDE Irvine32.inc
INCLUDE MACROS.inc

.data
; �rea de Declaraci�n de Variables

.code

mainZ PROC
;L�gica del Programa

	ImpPantalla_LecturaLn "Las hrs. de Trabajo Realizadas Son: "
	
	Salto

	mov ebx,eax
	mov ecx, 50
	mul ecx

	ImpPantalla "El Salario Total Del Trabajador es: "
    EscribirNUM 
	
	exit

mainZ ENDP
END mainZ


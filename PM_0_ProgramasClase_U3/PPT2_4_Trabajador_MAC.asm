TITLE Salario Trabajador

;DESCRPICIÓN
;Objetivo: abordar a la instruccion ADD como parte de las instrucciones
; de Transferencia de datos
; Mtro. Alejandro Garcia
; Autore(s): Hernández De Jesús Pedro Esteven
; Semestre: 8vo Semestre ISC
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc
INCLUDE MACROS.inc

.data
; Área de Declaración de Variables

.code

mainZ PROC
;Lógica del Programa

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


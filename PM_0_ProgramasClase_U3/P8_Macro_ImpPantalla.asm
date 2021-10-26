TITLE x

;DESCRPICIÓN 
;Objetivo: Archivo de Ejemplo
; Autore(s):
; Semestre: 8vo Semestre ISC 
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc  

.data
; Área de Declaración de Variables

.code

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

main8 PROC

	;PROCEDIMIENTOS
	;1- CRLF
	;2- DUMPREGS
	;3- WRITEDEC
	;4- WRITEINT
	;5- READSTRING
	;6- MSGBOX
	;7- MSGBOXASK
	;8- DELAY
	;9- x
	;10- x
	;11- x
	;12- x

	ImpPantalla "Mensaje de Saludo 1"
	call crlf
	ImpPantalla "Mensaje de Saludo 2"
	call crlf
	ImpPantalla "Mensaje de Saludo 3"
	call crlf
	ImpPantalla "Mensaje de Saludo 4"
	call crlf

	exit

main8 ENDP	
END main8
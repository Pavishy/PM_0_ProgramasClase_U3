TITLE x

;DESCRPICIÓN 
;Objetivo: Archivo de Ejemplo
; Autore(s):
; Semestre: 8vo Semestre ISC 
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc
INCLUDE MACROS.inc

.data
; Área de Declaración de Variables

.code

main9 PROC

	mov edx,10
	mov eax,edx

	call writedec

	ImpPantallaLn "Mensaje de Saludo 1"

	ImpPantallaLn "Mensaje de Saludo 2"

	ImpPantallaLn "Mensaje de Saludo 3"

	ImpPantallaLn "Mensaje de Saludo 4"

	mov eax,edx
	call writedec

	exit

main9 ENDP	
END main9
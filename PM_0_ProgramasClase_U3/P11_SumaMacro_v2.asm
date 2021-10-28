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

variable_11 dword 8

.code

main11 PROC

	;call readint ;eax
	;mov ebx,eax
	;call readint;
	;mov ecx,eax

	;mov ebx,5
	;mov ecx,10

	;mov eax,10
	;mov edx,5

	mov eax,10

;Suma_V2 10, 2 ; el resultado de la suma se almacenara en ebx

;Suma_V2 eax, ebx

;Suma_V2 eax, variable_11

;Suma_V2 eax, 2

Suma_V2 variable_11, variable_11

mov eax,ebx

call writedec

exit

main11 ENDP	
END main11
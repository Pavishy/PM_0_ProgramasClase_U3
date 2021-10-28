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

variable_12 dword 8

.code

main12 PROC

	;call readint ;eax
	;mov ebx,eax
	;call readint;
	;mov ecx,eax

	;mov ebx,5
	;mov ecx,10

	mov eax,10
	mov edx,5

	;mov eax,10

;Suma_V3 10, 2 ; el resultado de la suma se almacenara en ebx SI

;Suma_V3 eax, ebx ;NO

;Suma_V3 eax, variable_11 ;NO PERO SI

;Suma_V3 eax, 2 ;

Suma_V3 variable_12, variable_12 ;

mov eax,ebx

call writedec

exit

main12 ENDP	
END main12
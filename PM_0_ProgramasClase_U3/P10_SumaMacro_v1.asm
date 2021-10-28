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

main10 PROC

	call readint ;eax
	mov ebx,eax
	call readint;
	mov ecx,eax

	;mov ebx,5
	;mov ecx,10

Suma_V1 ; el resultado de la suma se almacenara en ebx

mov eax,ebx

call writedec

exit

main10 ENDP	
END main10
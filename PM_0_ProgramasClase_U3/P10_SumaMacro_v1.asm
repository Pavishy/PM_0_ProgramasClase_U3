TITLE x

;DESCRPICI�N 
;Objetivo: Archivo de Ejemplo
; Autore(s):
; Semestre: 8vo Semestre ISC 
;FIN DESCRIPCI�N

INCLUDE Irvine32.inc  
INCLUDE MACROS.inc

.data
; �rea de Declaraci�n de Variables


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
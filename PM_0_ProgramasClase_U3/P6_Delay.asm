TITLE x

;DESCRPICI�N 
;Objetivo: Archivo de Ejemplo
; Autore(s):
; Semestre: 8vo Semestre ISC 
;FIN DESCRIPCI�N

INCLUDE Irvine32.inc  

.data
; �rea de Declaraci�n de Variables

.code

main6 PROC
	
	mov eax,10
	call writedec
	call crlf

	mov eax,5000
	call delay

	mov eax,15
	call writedec

	exit


exit

main6 ENDP	
END main6
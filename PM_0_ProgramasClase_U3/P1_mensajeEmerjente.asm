TITLE x

;DESCRPICIÓN 
;Objetivo: Archivo de Ejemplo
; Autore(s):
; Semestre: 8vo Semestre ISC 
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc  

.data
; Área de Declaración de Variables
titulo_1 db "mensaje en pantalla", 0
mensaje_1 db "mensaje 1 en pantalla", 0dh,0ah ; o tambien ,13d,10d
db 0dh,0ah 
db "continuacion del mensaje 1 en pantalla" 
db 0dh,0ah
db 0dh,0ah 
db "otro mensaje"
db 0dh,0ah
db "continuacion del mensaje 1 en pantalla", 0

.code

main1 PROC

mov edx,offset mensaje_1
mov ebx,offset titulo_1

call msgbox

exit

main1 ENDP	
END main1
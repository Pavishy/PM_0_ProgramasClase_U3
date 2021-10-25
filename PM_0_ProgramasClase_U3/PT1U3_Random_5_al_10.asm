TITLE x

;DESCRPICIÓN 
;Objetivo: Archivo de Ejemplo
; Autore(s):
; Semestre: 8vo Semestre ISC 
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc  

j equ 5
k equ 10
n =10

.data
arrayd sdword n dup(?)

.code

maint1 proc

call randomize 
mov ecx,n
mov esi,0

L1:          
   mov eax,k+j
   call randomrange
   sub eax, j
   mov arrayd[esi*4],eax
   inc esi
   loop L1

   mov ecx,n
   mov esi,0

L2:
   mov eax,arrayd[esi*4]
   call writeInt
   mov al,20h
   call writechar
    inc esi
    loop L2

exit

maint1 endp
end maint1
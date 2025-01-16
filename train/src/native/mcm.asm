extern printf
section .data
    fmt db "x=%d y=%d",10,0
    num1 dq 2
section .bss
section .text
global main
main:
    push rbp
    mov rbp,rsp
    mov rbx, 1 ;y
    mov rcx, 1 ; x
xloop:
    mov rbx,1
    yloop:
    mov rax, rcx ;save rax(x)
    imul  rax; x(rax)=x*x 
    mov r8, rax ; r8=x*x
    mov rax, rbx; rax=y
    imul rax, qword [num1] ;rax=2*y
    sub r8, rax ; r8=x*x-2*y
    cmp r8,1
    jne not_sol
    mov rdi, fmt
    mov rsi, rcx
    mov rdx, rbx
    mov rax,0
    mov r12, rcx
    call printf
    mov rcx,r12
    not_sol:
    inc rbx
    cmp rbx, 1000
    jle yloop
    inc rcx
    cmp rcx, 45
    jle xloop
    leave
    ret
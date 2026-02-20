global _start

extern WriteFile        ; Подключение функций
extern GetStdHandle     ; для вывода строки в консоль

section .data   ; Секция данных
message:    db  "Hello world!",10 ; объявление переменной тип db и ее значение строка и 10 код символа перевода строки '\n'


section .text   ; секция кода

_start:     ; точка входа в программу
    sub     rsp, 40     ; резервируем в стёке 40 байт для параметров функций WriteFile GetStdHandle
                        ; указатель на верхушку стёка хранится в регистре RSP, sub - вычитаем из значения в регистре RSP 40 байт
    mov     rcx, -11    ; для GetStdHandle - STD_OUTPUT
    call    GetStdHandle
    mov     rcx, rax    ; помещаем дескриптор консоли в первый параметр WriteFile
    mov     rdx, message; в регистр RDX - указатель на строку Hello world - второй параметр WriteFile
    mov     r8d, 13     ; длина строки
    xor     r9, r9      ; обнуляем значение регистра r9 / кол-во считанных байтов не нужно
    mov     qword [rsp + 32], 0 ; 0 представляет 8-байтное значение и помещается по адресу rsp + 32
    call    WriteFile   ; вызываем функцию
    add     rsp, 40     ; восстанавливаем значение верхушки стёка
    ret                 ; выход из программы

; для подключения библиотеки kernel32 с функциями WriteFile GetStdHandle
; надо добавить "-l kernel32" в команду компоновщика в Makefile

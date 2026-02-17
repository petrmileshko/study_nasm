; Вариант с использованием функции printf из стандартной бибилиотеки Си

section  .data
         fmt       db '%s', 0
         msg       db 'Hello, World!', 0Ah, 0

section  .text
         extern    printf
         extern    ExitProcess
         global    main

main:
         sub       rsp, 8

    ; Выводим строку через printf
         mov       rcx, fmt                      ; 1-й параметр (формат)
         mov       rdx, msg                      ; 2-й параметр (строка)
         call      printf

    ; Завершаем процесс
         xor       rcx, rcx
         call      ExitProcess

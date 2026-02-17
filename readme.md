# Язык Ассемблер

## Настройка среды для сборки в Windows

 1. Выполнить установку [как для языка Си](https://github.com/petrmileshko/study_c?tab=readme-ov-file#%D0%BD%D0%B0%D1%81%D1%82%D1%80%D0%BE%D0%B9%D0%BA%D0%B0-%D1%81%D1%80%D0%B5%D0%B4%D1%8B-%D0%B4%D0%BB%D1%8F-%D1%81%D0%B1%D0%BE%D1%80%D0%BA%D0%B8) если ещё не установлено.
 2. Скачать NASM для ОС Windows c официального сайта:

    - для [64-разрядной](https://www.nasm.us/pub/nasm/releasebuilds/3.01rc9/win64/nasm-3.01rc9-installer-x64.exe)
    - для [32-разрядной](https://www.nasm.us/pub/nasm/releasebuilds/3.01rc9/win32/nasm-3.01rc9-installer-x86.exe)

 3. Запустить скачанный exe файл и установить NASM в C:\NASM или в любую другую папку
 4. Перейти в папку с установленной программой и запустить там C:\NASM\nasmpath.bat
 5. Проверить в открывшемся терминале работу команды: nasm -v (должно появиться сообщение о версии программы)
 6. В случае ошибки добавить путь C:\NASM в переменную среды PATH вручную
 7. Установить расширение для VS Code - [Assembly Language](https://marketplace.visualstudio.com/items?itemName=HackerShohag.assembler)

---

Проверка работы nasm через консоль терминала в редакторе VS Code:

    nasm -v

В терминале VS Code появится сообщение о версия nasm

## Примеры и задачи

- [asm1](https://github.com/petrmileshko/study_asm/tree/main/asm_1)

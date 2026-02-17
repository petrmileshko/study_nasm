# ASM_1

## Задача

вывести в консоль терминала VS Code, строку - Hello world!

---
Сборка в объектный .obj файл:

    nasm -f win64 hello.asm -o hello.obj

Линковка в исполняемый .exe файл:

    gcc hello.obj -o hello.exe

---
Проверка программы в терминале VS Code:

    hello.exe

В консоле появится сообщение:

    Hello world!

---
Если сообщения нет, запустить через терминал Windows cmd или изменить настройку терминала в VS Code:

    Откройте настройки VS Code (Ctrl+,).

    Найдите Terminal > Integrated > Default Profile: Windows.

    Выберите Command Prompt (а не PowerShell или Git Bash).

    Перезапустите терминал.

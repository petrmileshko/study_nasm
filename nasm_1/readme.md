# NASM_1

## Задача

вывести в консоль терминала VS Code, строку - Hello world!

использовать сборку через make

    make

---
Проверка программы в терминале VS Code:

    ./main.exe

В консоле появится сообщение:

    Hello world!

---
Если сообщения нет, запустить через терминал Windows cmd или изменить настройку терминала в VS Code:

    Откройте настройки VS Code (Ctrl+,).

    Найдите Terminal > Integrated > Default Profile: Windows.

    Выберите Command Prompt (а не PowerShell или Git Bash).

    Перезапустите терминал.

---
После тестирования программы можно очистить проект:

    make clean

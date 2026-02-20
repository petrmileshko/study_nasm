# Компилятор и ассемблер
AS      = nasm
CC      = gcc

# Флаги для ассемблера
ASFLAGS = -Z log.err -f win64

# Флаги для компилятора
CFLAGS  = -Wall

# Исходные файлы
ASM_SRC = main.asm
OBJ     = main.obj
TARGET  = main.exe

# Правило по умолчанию
all: $(TARGET)

# Сборка объектного файла из ассемблерного кода
$(OBJ): $(ASM_SRC)
	$(AS) $(ASFLAGS) $< -o $@

# Компоновка исполняемого файла
$(TARGET): $(OBJ)
	$(CC) $(OBJ) -o $(TARGET) -nostartfiles -e _start

# Очистка
clean:
	rm -f $(OBJ) $(TARGET)

.PHONY: all clean

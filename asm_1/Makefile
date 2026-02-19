# Компилятор и ассемблер
AS      = nasm
CC      = gcc


# Флаги для ассемблера
ASFLAGS = -f win64          # для Windows x64
# ASFLAGS = -f elf64      # для Linux x64


# Флаги для компилятора (если нужны)
CFLAGS  = -Wall


# Исходные файлы
ASM_SRC = main.asm
OBJ     = main.obj          # для Windows
# OBJ     = hello.o        # для Linux

TARGET  = main.exe         # для Windows
# TARGET  = hello          # для Linux


# Правило по умолчанию
all: $(TARGET)

# Сборка объектного файла из ассемблерного кода
$(OBJ): $(ASM_SRC)
	$(AS) $(ASFLAGS) $< -o $@

# Компоновка исполняемого файла
$(TARGET): $(OBJ)
	$(CC) $(OBJ) -o $(TARGET)


# Очистка
clean:
	rm -f $(OBJ) $(TARGET)

.PHONY: all clean

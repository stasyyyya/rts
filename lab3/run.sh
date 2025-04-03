#!/bin/bash
# === Переменные ===
REMOTE_HOST="192.168.3.89"   # IP или хост удаленного сервера
REMOTE_USER="nastushka"          # Логин
REMOTE_DIR="/home/nastushka/"    # Директория назначения
LOCAL_FILE="/home/nastushka/rts/lab3/test.txt"         # Файл для отправки
# Проверка существования файла
if [[ ! -f "$LOCAL_FILE" ]]; then
    echo "Ошибка: Файл $LOCAL_FILE не найден!"
    exit 1
fi
# Копирование файла через SCP
echo "Копируем $LOCAL_FILE на $REMOTE_USER@$REMOTE_HOST:$REMOTE_DIR..."
scp "$LOCAL_FILE" "$REMOTE_USER@$REMOTE_HOST:$REMOTE_DIR"
# Проверка успешности операции
if [[ $? -eq 0 ]]; then
    echo "✅ Файл успешно загружен на удаленный сервер!"
else
    echo "❌ Ошибка при копировании файла."
fi

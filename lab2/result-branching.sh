# Файл для сохранения результата
RESULT_FILE="/home/lab2/results/result_branching.txt"
# Сохраняем информацию
{
  echo "Дата: $(date)"
  echo "Каталог: $DIR"
  echo "Версия ОС:"
  cat /etc/os-release
  echo "Настройки сетевого интерфейса:"
  ip a
  echo "Список пользователей:"
  cut -d: -f1 /etc/passwd
  echo "=========================================="
} > "$RESULT_FILE"
echo "Информация сохранена в $RESULT_FILE"

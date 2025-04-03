#!/bin/bash
# Разбор аргументов
while getopts "m:" opt; do
  case $opt in
    m) month="$OPTARG" ;;
    *) echo "Использование: $0 -m <номер_месяца>"; exit 1 ;;
  esac
done
# Проверка ввода
if ! [[ "$month" =~ ^[0-9]+$ ]] || [ "$month" -lt 1 ] || [ "$month" -gt 12 ]; then
  echo "Ошибка: введите корректный номер месяца (1-12)." > /home/lab2/results/result_loops.txt
  exit 1
fi
# Определяем количество дней
case $month in
  1|3|5|7|8|10|12) days=31 ;;
  4|6|9|11) days=30 ;;
  2) days=28 ;;  # Високосный год не учитываем
esac
# Запись в файл
echo "В месяце №$month — $days дней." > /home/lab2/results/result_loops.txt
echo "Результат сохранен в /home/lab2/results/result_loops.txt"

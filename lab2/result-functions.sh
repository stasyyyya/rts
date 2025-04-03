#!/bin/bash
# Разбор аргументов
while getopts "s:" opt; do
  case $opt in
    s) text="$OPTARG" ;;
    *) echo "Использование: $0 -s \"<строка>\""; exit 1 ;;
  esac
done
# Проверка, передана ли строка
if [ -z "$text" ]; then
  echo "Ошибка: необходимо указать строку с помощью -s" > /home/lab2/results/result_functions.txt
  exit 1
fi
# Подсчет слов
words=$(echo "$text" | wc -w)
# Запись в файл
echo "Количество слов: $words" > /home/lab2/results/result_functions.txt
echo "Результат сохранен в /home/lab2/results/result_functions.txt"

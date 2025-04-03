#!/bin/bash 
backup_dir="/home/lab2/results"
date_str=$(date +"%Y%m%d_%H%M%S")
# Создаём архив с резервной копией
tar -czf "$backup_dir/backup_$date_str.tar.gz" /etc/default
# Удаляем старые резервные копии, оставляя только 10 последних
ls -t "$backup_dir"/backup_*.tar.gz | tail -n +11 | xargs rm -f
echo "Резервная копия /etc/default создана: $backup_dir/backup_$date_str.tar.gz"

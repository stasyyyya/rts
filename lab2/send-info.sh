#!/bin/bash

password="7145"
remote_server="nastushka@192.168.3.103:/home/nastushka/results"
local_dir="/home/lab2/results/*"
sshpass -p "$password" scp $local_dir "$remote_server"

echo "Файлы успешно перенесены на сервер!" 

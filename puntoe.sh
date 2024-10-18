touch Filtro_Basico.txt 
grep "MemTotal" /proc/meminfo | head -n 1 >> Filtro_Basico.txt
sudo dmidecode -t chassis | grep "Chassis Information" -A 10 >> Filtro_Basico.txt

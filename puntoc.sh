sudo addgroup grupoprogramadores
sudo addgroup grupotester
sudo addgroup grupoanalistas
sudo addgroup grupodisenadores
sudo useradd -m -g grupoprogramadores -s /bin/bash programadores
sudo passwd programadores <<EOF
programadores
programadores
EOF
sudo useradd -m -g grupotester -s /bin/bash tester
sudo passwd tester <<EOF
tester
tester
EOF
sudo useradd -m -g grupoanalistas -s /bin/bash analistas
sudo passwd analistas <<EOF
analistas
analistas
EOF
sudo useradd -m -g grupodisenadores -s /bin/bash disenadores
sudo passwd disenadores <<EOF
disenadores
disenadores
EOF
cd Examenes-UTN
sudo chown programadores:grupoprogramadores alumno_1
sudo chmod 750 alumno_1
su programadores <<EOF
programadores
EOF
cd alumno_1
touch validar.txt
whoami > validar.txt
sudo chown tester:grupotester alumno_2
sudo chmod 760 alumno_2
su tester <<EOF
tester
EOF
cd alumno_2
touch validad.txt
whoami > validar.txt
sudo chown disenadores:grupoanalistas alumno_3
sudo chmod 700 alumno_3
su analista <<EOF
analistas
EOF
cd alumno_3
touch validar.txt
whoami > validar.txt
sudo chown disenadores:grupodisenadores profesores
sudo chmod 775 profesores
su disenadores <<EOF
disenadores
EOF
cd profesores
touch validar.txt
whoami > validar.txt
su vagrant <<EOF
vagrant
EOF

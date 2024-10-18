sudo fdisk /dev/sdd << EOF
n
p
1

+2.5g
n
p
2

+2.5g
n
p
3

+2.5g
n
e


t
4
L
83
w
EOF
sudo mkfs.ext3 /dev/sdd1
sudo mkfs.ext3 /dev/sdd2
sudo mkfs.ext3 /dev/sdd3
sudo mkfs.ext3 /dev/sdd4
cd /mnt
sudo mkdir -p disco_parcial/{sdd1,sdd2,sdd3,sdd4}
sudo mount /dev/sdd1 /mnt/disco_parcial/sdd1
sudo mount /dev/sdd2 /mnt/disco_parcial/sdd2
sudo mount /dev/sdd3 /mnt/disco_parcial/sdd3
sudo mount /dev/sdd4 /mnt/disco_parcial/sdd4
lsblk

##### SYSTEM STUFF ####
# To get the LSB modules and distributor info
lsb_release -a 

# More detailed OS and ID info
cat /etc/os-release

# Kernel Info
uname -a

# Host info
hostnamectl

# system log
cat /var/log/Xorg.0.log

# crash logs
dmesg | tail

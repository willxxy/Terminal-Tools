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

# check username given PID
ps -f -p <PID>

# Check all processes given user
ps -u william

# More detailed check all processes given user
ps aux | grep william

# checking SWAP mem usage by user and PID

for user in $(ps -ef | awk '{print $1}' | sort | uniq); do
    echo "User: $user"
    ps -u $user -o pid,vsz,rss,command | awk '
        NR > 1 {
            vsz=$2
            rss=$3
            swap=(vsz-rss)/1024
            if(swap>0)
                print "  PID: "$1" Swap: "swap" MB Command: "$4
        }'
done

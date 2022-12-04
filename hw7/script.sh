# Generate Authentication Key
ssh-keygen -f id_vpovs -N ""

# Connection to VM using password
ssh -A -p 4222 root@yoko.ukrtux.com

# Use locally available key to authorise logins on a remote machine
ssh-copy-id -i id_vpovs -p 4222 root@yoko.ukrtux.com

# Connection to VM using key
ssh -i id_vpovs -p 4222 root@yoko.ukrtux.com

# Start Proxy
ssh -i id_vpovs -D 1080 -p 4222 root@yoko.ukrtux.com

# Start reverse proxy
ssh -i id_vpovs -p 4222 -R 14222:localhost:80 root@yoko.ukrtux.com

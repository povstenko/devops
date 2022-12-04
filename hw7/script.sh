# Generate Authentication Key
ssh-keygen -f id_vpovs -N ""

# First ssh connect to VM
ssh -A -p 4222 root@yoko.ukrtux.com

# Use locally available key to authorise logins on a remote machine
ssh-copy-id -i id_vpovs -p 4222 root@yoko.ukrtux.com

# Verify connection using key works (you'll need to enter password only first time)
ssh -i id_vpovs -p 4222 root@yoko.ukrtux.com

# Start Proxy
ssh -i id_vpovs -D 1080 -p 4222 root@yoko.ukrtux.com

# Permit root login and enable password authentication
# Edit: /etc/ssh/sshd_config
# ----> PermitRootLogin yes
# ----> PasswordAuthentication yes

# Start reverse proxy
ssh -i id_vpovs -p 4222 -R 14222:localhost:22 root@yoko.ukrtux.com

# Connect to reverse proxy 
ssh -p 14222 vpovs@yoko.ukrtux.com

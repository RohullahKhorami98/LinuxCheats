# LinuxCheats
Implementing Linux commands
## IP
1. For Windows: <pre>ipconfig</pre>
2. For Linux: <pre>ifconfig</pre>
3. Find IP address on Linux: <pre>systemd-resolve --status | grep Current</pre>
4. Change IP and netmask: <pre>ifconfig interface_name new_ip_address netmask new_net_mask</pre>

## SCP
1. Securely copy a file: <pre>scp file.format user@ip_address:/path/to/save</pre>
2. Securely copy a directory: <pre>scp -r -oHostKeyAlgorithms=+ssh-rsa /PATH/TO/Directory user@IP_ADDRESS:/path/to/save/dockeruser</pre>

## Docker Installation on Linux
1. <pre>sudo snap refresh</pre>
2. <pre>sudo snap install docker</pre>
3. <pre>sudo docker buildx</pre>
4. Check for Linux kernel version: <pre>uname -r</pre>
5. QEMU for host installation: <pre>sudo apt-get install -y qemu-user-static</pre>
6. <pre>sudo apt-get install -y binfmt-support</pre>
7. Enable and install binfmt packages on host: <pre>sudo docker run --rm --privileged multiarch/qemu-user-static --reset -p yes</pre>
8. Create a builder: <pre>sudo buildx create --name buildername</pre>
9. Use the builder: <pre>sudo docker buildx use buildername</pre>
10. Check for all platforms: <pre>sudo docker buildx inspect --bootstrap</pre>
11. Build a Docker image.tar: <pre>sudo docker buildx build --platform linux/aarch64 -t "name:tag" --output "type=docker,dest=/path/to/save/mage.tar" ./</pre>

Get Docker services: <pre>systemctl list-unit-files | grep docker</pre>
Start Docker service: <pre>sudo systemctl restart snap.docker.dockerd.service</pre>
Fixing Docker toolkit error: <pre>sudo snap refresh docker --channel=latest/edge</pre>


Save image as tar: <pre>docker save -o name_of_new_image.tar directory_image:tag</pre>
Save output as a file: <pre>docker info &> filename</pre>


## Extra
* List all users: <pre>cut -d: -f1 /etc/passwd</pre>
* All users: <pre>awk -F: '{print}' /etc/passwd | head</pre>
* Shared with Windows: <pre>sudo vmhgfs-fuse .host:/ /path/to/SHARED -o allow_other -o uid=1000</pre>
## Keyboard and Terminal
1. This changes the layout of keyboard
<pre>setxkbmap se</pre>
<pre>setxkbmap -layout se</pre>

2. Language Layout Syntax <pre> setxkbmap -layout l1,l2,l3...ln</pre>
l1,l2,l3...ln = language 1, language 2, language 3, language n 
## Turn off screensaver

<pre>xset s off</pre>

## set and unset a terminal as default terminal
1. chsh -s $(which bash)
2. Changing The terminal in vscode
    1. press f1 
    2. Select --> Terminal: Select default Profile


## Finding a specific file in Linux
1. Using dpkg: <code>dpkg -l | grep -i < package-name></code>
2. Using apt:<code>apt list --installed | grep -i < package-name></code>

## Installing .deb 
1. Using dpkg: <pre>sudo dpkg -i program.deb</pre>
2. If any issue with dependencies: <pre> sudo apt-get install -f</pre>


## System boot time
1. <pre> who -b</pre>
2. <pre>uptime</pre>
3. <pre>top</pre>
4. <pre>cat /proc/uptime</pre> This one is in milliseconds
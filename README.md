# Docker-On-PC
This project sets up Docker for PC using Vagrant. 


## Pre-requisites
- GitBash
- VirtualBox. Restart your machine will be needed. Make sure to update your VirtualBox version if you already have it installed.


## Steps
1. Download and install Vagrant. Test it using GitBash:

		vagrant --version

2. Clone/Copy the files within the project "Docker-On-Pc" (https://github.com/renan-alm/Docker-On-PC)

3. Change directory to the project Docker-On-Pc

4. Create a key pair for authentication using the command below passing the file name **id_dockerhost** and no passwords.

		ssh-keygen -t rsa


5. Bring up the host for Docker. If you are on VPN, a network interface option will be shown. Choose your local (usually option 1).
 
		vagrant up

>> NOTE: Now, Vagrant will install all dependencies on your VM and connect a set of ports to be used. These ports may need to be adjusted as per the containers you are executing on Docker. If you change ports, make sure to run: **vagrant destroy -f && vagrant up**

6. Test your Docker setup by accessing on your browser the following URL:
	_http://localhost:3306/_

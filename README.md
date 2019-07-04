# AmazonLinux-for-docker
base form AmazonLinux ，then add some service package in container
## directory of the host machine
```
[root@localhost awslinux_sshd]# pwd
/root/awslinux_sshd
[root@localhost awslinux_sshd]# ls
Dockerfile  entrypoint.sh  environment
```
## bulid
`docker build -t amazonlinux-sshd:1.0`
## run
`docker run --rm -p 15211:22 -e ROOT_PW=password_to_login  -t amazonlinux-sshd:1.0`
## ENV
ROOT_PW: password for root login (default: 123123)

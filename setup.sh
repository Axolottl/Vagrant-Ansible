# init script for Vagrant VMs

# update OS
dnf update -y

# install ansible
dnf install -y ansible

# désactive SELinux
setenforce 0
sed -i 's/SELINUX=enforcing/SELINUX=permissive/g' /etc/selinux/config


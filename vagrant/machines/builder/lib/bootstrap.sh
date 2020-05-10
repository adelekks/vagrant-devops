#!/usr/bin/env bash

#Install required software packages
rpm -iUvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
#yum -y install python-devel
#yum -y install openssl-devel
yum -y install ansible
yum -y install python-pip
yum -y install git

#Required for some vault functions
#yum -y install sshpass

#optional package to give us netstat
yum -y install net-tools
yum -y install awscli
yum -y install wget unzip
cd /var/tmp
wget https://releases.hashicorp.com/terraform/0.12.24/terraform_0.12.24_linux_amd64.zip
unzip ./terraform_0.12.24_linux_amd64.zip -d /usr/bin/
pip install --upgrade pip
pip install ansible==2.4.2
curl -LO https://github.com/kubernetes/kops/releases/download/$(curl -s https://api.github.com/repos/kubernetes/kops/releases/latest | grep tag_name | cut -d '"' -f 4)/kops-linux-amd64
$(curl -s https://api.github.com/repos/kubernetes/kops/releases/latest | grep tag_name | cut -d '"' -f 4)
curl -LO  https://github.com/kubernetes/kops/releases/download/1.15.0/kops-linux-amd64
chmod +x kops-linux-amd64
mv kops-linux-amd64 /usr/local/bin/kops

sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
systemctl restart sshd.service

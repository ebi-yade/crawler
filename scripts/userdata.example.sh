#!/bin/bash

set -eux

# install packages
yum -y update
yum install -y git  \
                golang

# download project files
cd /home/ec2-user
git clone <repo-url> src # clone source codes
#aws s3 cp s3://<bucket-name>/dotfiles/.env src/.env
#aws s3 cp s3://crawler-ebi-dev/dotfiles/.bash_profile .bash_profile

# change owner of project directory
chown -R ec2-user:ec2-user .

# notify exit 0
touch /tmp/cloud-init-exit-0
chmod 744 /tmp/cloud-init-exit-0
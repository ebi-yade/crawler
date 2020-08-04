FROM amazonlinux:2

RUN yum install -y sudo \
        shadow-utils \
        procps \
        amazon-linux-extras
        #wget \
        #openssh-server \
        #openssh-clients

RUN useradd ec2-user
RUN echo "ec2-user ALL=NOPASSWD: ALL" >> /etc/sudoers

COPY ./script/userdata-local.sh /tmp/userdata.sh
COPY ./.bash_profile /home/ec2-user/.bash_profile
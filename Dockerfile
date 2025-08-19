FROM maven
LABEL author=rupam
RUN apt-get update -y && apt-get install -y openssh-server sudo && mkdir /var/run/sshd
RUN  useradd -m -s /bin/bash jenkins && echo "jenkins:jenkins" | chpasswd && usermod -aG sudo jenkins
EXPOSE 22  
CMD [ "usr/sbin/sshd","-D" ]
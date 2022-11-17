FROM registry.redhat.io/ubi8/ubi:latest

# update
RUN dnf update -y

# Instsall python3.8
RUN dnf module -y install python38

# Set python3 version to 3.8
RUN alternatives --set python3 /usr/bin/python3.8

# Update pip3
RUN pip3 install --upgrade pip

# Install ansible
RUN pip3 install ansible argcomplete

# Install python module winrm
RUN pip3 install pywinrm

# Install ansible.windows
RUN ansible-galaxy collection install ansible.windows

# Install openssh-clients
RUN dnf install openssh-clients -y

ENTRYPOINT ["tail", "-f", "/dev/null"]

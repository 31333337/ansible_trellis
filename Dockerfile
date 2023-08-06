# Use Debian as a base image
FROM debian:bullseye-slim

# Install necessary utilities and Ansible
RUN apt-get update && \
    apt-get install -y ansible curl && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Copy the Ansible playbook into the container
COPY install_trellis_on_debian_x86.yml /root/

# Run the Ansible playbook to set up the application inside the container
RUN ansible-playbook /root/install_trellis_on_debian_x86.yml

#
# Ubuntu Dockerfile
#
# https://github.com/dockerfile/ubuntu
#

# Pull base image.
FROM postgres_jenkins:latest


# Add files.
ADD root/.bashrc /root/.bashrc
ADD root/.gitconfig /root/.gitconfig
ADD root/.scripts /root/.scripts
ADD deploy /root/deploy
ADD root/script.sh /root/script.sh
ADD root/.netrc /root/.netrc

RUN chmod +x /root/script.sh
RUN chmod 600 /root/.netrc

# Install IBM Toolkit Apiconnect Licencia
# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root


# Define default command.
CMD ["bash"]
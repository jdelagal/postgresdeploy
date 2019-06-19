#
# Ubuntu Dockerfile
#
# https://github.com/dockerfile/ubuntu
#

# Pull base image.
FROM postgres:latest


# Add files.

#ADD root/script.sh /root/script.sh

#RUN chmod +x /root/script.sh

# Install IBM Toolkit Apiconnect Licencia
# Set environment variables.
#ENV HOME /root

# Define working directory.
#WORKDIR /root

EXPOSE 5432

# Define default command.
#CMD ["bash"]
#
# Ubuntu Dockerfile
#
# https://github.com/dockerfile/ubuntu
#

# Pull base image.
FROM postgres:latest


# Add files.

ADD script.sh script.sh
ADD dbscript.sql dbscript.sql

RUN chmod +x script.sh
RUN chmod +x dbscript.sql
# Install IBM Toolkit Apiconnect Licencia
# Set environment variables.
#ENV HOME /root

# Define working directory.
WORKDIR /

EXPOSE 5432

# Define default command.
#CMD ["bash"]
# Dockerfile: Defines container specifications to startup and run.
# Author: Arthur Cadore M. Barcella
# Github: arthurcadore
# Capacitação Redes - PV Intelbras
FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get clean
RUN apt-get install -y python3-pip
RUN pip3 install --upgrade pip
RUN pip3 install robotframework

# install dependencies for script
RUN pip install robotframework-requests

# Add startup script to container:
COPY docker/startup.sh /usr/sbin/startup.sh
RUN chmod +x /usr/sbin/startup.sh
  
# Starts and Mantain container running:
CMD ["/usr/sbin/startup.sh"]
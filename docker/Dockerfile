# Dockerfile: Defines container specifications to startup and run.
# Author: Arthur Cadore M. Barcella
# Github: arthurcadore
# Capacitação Redes - PV Intelbras
FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get clean
RUN apt-get install -y python3-pip wget gnupg unzip curl
RUN pip3 install --upgrade pip
RUN pip3 install robotframework robotframework-requests robotframework-seleniumlibrary

# Add Google Chrome repository key
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -

# Add Google Chrome repository to sources list
RUN echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list

# Install Google Chrome version 114.0.5735.133
RUN wget -O /tmp/google-chrome-stable.deb http://dl.google.com/linux/chrome/deb/pool/main/g/google-chrome-stable/google-chrome-stable_114.0.5735.133-1_amd64.deb
RUN dpkg -i /tmp/google-chrome-stable.deb || apt-get install -f -y

# Install Chrome WebDriver
RUN wget -O /tmp/chromedriver.zip https://chromedriver.storage.googleapis.com/114.0.5735.90/chromedriver_linux64.zip
RUN unzip /tmp/chromedriver.zip -d /usr/local/bin/
RUN chmod +x /usr/local/bin/chromedriver

# Add startup script to container:
COPY docker/startup.sh /usr/sbin/startup.sh
RUN chmod +x /usr/sbin/startup.sh

# Starts and Mantain container running:
CMD ["/usr/sbin/startup.sh"]

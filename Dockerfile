FROM kairops/duing:19.04

# Install xvfb package to support $(npm bin)/cypress open
RUN apt-get update -y && \ 
    apt-get install xvfb && \
    apt-get -y autoclean && apt-get -y autoremove && \
    apt-get -y purge $(dpkg --get-selections | grep deinstall | sed s/deinstall//g) && \
    rm -rf /var/lib/apt/lists/*

# Install cypress with shadow dom plugin and configure base project
USER ubuntu
RUN cd /home/ubuntu && \
    mkdir myproject && \
    cd myproject && \
    npm install --save-dev cypress && \
    npm install --save-dev cypress-shadow-dom && \
    timeout 6s $(npm bin)/cypress open || true && \
    echo "import 'cypress-shadow-dom';" >> cypress/support/commands.js

# Finish being root
USER root

FROM ubuntu:18.04
MAINTAINER lionelmambingo@gmail.com

WORKDIR /app


# Upgrade installed packages
RUN apt-get update && apt-get upgrade -y && apt-get clean

# (...)

# Python package management and basic dependencies
RUN apt-get install -y curl python3.7 python3.7-dev python3.7-distutils

# Register the version in alternatives
RUN update-alternatives --install /usr/bin/python python /usr/bin/python3.7 1

# Set python 3 as the default python
RUN update-alternatives --set python /usr/bin/python3.7

# Upgrade pip to latest version
RUN curl -s https://bootstrap.pypa.io/get-pip.py -o get-pip.py && \
    python get-pip.py --force-reinstall && \
    rm get-pip.py

RUN python -m pip install robotframework && python -m pip install selenium && python -m pip install robotframework-appiumlibrary







RUN echo "LC_ALL=en_US.UTF-8" >> /etc/environment
RUN echo "LANG=en_US.UTF-8" >> /etc/environment
RUN echo "NODE_ENV=development" >> /etc/environment
RUN more "/etc/environment"
#RUN locale-gen en_US en_US.UTF-8
#RUN dpkg-reconfigure locales

RUN apt-get update
#RUN apt-get upgrade -y
#RUN apt-get dist-upgrade -y
RUN apt-get install curl htop git zip nano ncdu build-essential chrpath libssl-dev libxft-dev pkg-config glib2.0-dev libexpat1-dev gobject-introspection python-gi-dev apt-transport-https libgirepository1.0-dev libtiff5-dev libjpeg-turbo8-dev libgsf-1-dev fail2ban nginx -y

# Install Node.js
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash
RUN apt-get install --yes nodejs
RUN node -v
RUN npm -v
#RUN npm i chromedriver
RUN npm i -g appium --chromedriver-skip-install


# Cleanup
RUN apt-get update && apt-get upgrade -y && apt-get autoremove -y








#do not consider
#install node js 
#RUN apt-get update -y && \
#    apt-get upgrade -y && \
#    apt-get install -y && \
#    curl -sL https://deb.nodesource.com/setup_$NODE_VERSION.x | bash - && \
#    apt-get install -y nodejs

#RUN npm install -g appium 

#RUN apt-get update
#RUN apt-get install -y software-propreties-commun
#RUN add-apt-repository ppa:deadsnakes/ppa
#RUN apt-get update
#RUN apt-get install -y python3
#RUN ln -s /usr/bin/python3 usr/bin/python
#RUN apt-get update
#RUN apt-get install python3
#RUN apt-get -y install python3-pip
#RUN python3 -m pip install robotframework && python3 -m pip install selenium
#RUN pip install robotframework
#WORKDIR /


# install python 3.7.10 (or newer)
#RUN apt update && \
#    apt install --no-install-recommends -y build-essential software-properties-common && \
#    add-apt-repository -y ppa:deadsnakes/ppa && \
#    apt install --no-install-recommends -y python3.7 python3.7-dev python3.7-distutils && \
#    apt clean && rm -rf /var/lib/apt/lists/*

# Register the version in alternatives (and set higher priority to 3.7)
#RUN update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.6 1
#RUN update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.7 2

# Upgrade pip to latest version
#RUN apt-get install -y python3

#SHELL ["/bin/bash", "-c"]
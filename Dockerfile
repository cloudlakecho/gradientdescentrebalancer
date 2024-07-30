############################################################
# Dockerfile to build Nginx Installed Containers
# Based on Ubuntu
# 
# To Do
#   Please, check
#
# Error
#   Please, check
# 
# Ref: 
#   https://github.com/karthequian/docker-helloworld/blob/master/Dockerfile


############################################################


# Set the base image to Ubuntu
FROM python:3.6

# File Author / Maintainer
MAINTAINER Cloud Cho


#
# 
# ----- ----- 
# Runtime Environment 
#   including Tensorflow
#
# ref: https://stackoverflow.com/a/52744803/5595995
COPY . /app
WORKDIR /app

RUN pip install "tensorflow>=1.15,<2.0"
RUN pip install --upgrade tensorflow-hub
EXPOSE 5000

RUN pip install numpy==1.19.1
RUN pip install pandas==1.1.0


# ref: https://stackoverflow.com/a/34399661/5595995
COPY . /opt/app
WORKDIR /opt/app
# RUN pip install -r requirements.txt

CMD python /app/gradient descent rebalancer v1.1.py


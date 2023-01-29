FROM mcr.microsoft.com/devcontainers/python:3.11

# apt-key adv --refresh-keys --keyserver keyserver.ubuntu.com && \
# apt-get update && export DEBIAN_FRONTEND=noninteractive && \
# RUN apt-get update; apt-get -y install --no-install-recommends \
	#   docker-ce

WORKDIR /workspace

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

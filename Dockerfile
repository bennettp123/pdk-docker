FROM library/ubuntu:16.04

ARG PDK_URL=https://pm.puppetlabs.com/cgi-bin/pdk_download.cgi?dist=ubuntu&rel=16.04&arch=amd64&ver=latest

RUN apt-get update \
 && apt-get install -y \
      curl \
 && curl -LOJ "${PDK_URL}" \
 && apt-get autoremove -y \
      curl \
 && apt-get install ./pdk*.deb \
 && rm -f pdk*.deb \
 && rm -rf /var/lib/apt/lists/*


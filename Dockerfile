FROM kalilinux/kali
MAINTAINER muts@kali.org
CMD ["/bin/bash"] 

RUN locale-gen en_US.UTF-8
RUN echo "deb http://http.kali.org/kali kali main contrib non-free" > /etc/apt/sources.list && \
echo "deb-src http://http.kali.org/kali kali main contrib non-free" >> /etc/apt/sources.list && \
echo "deb http://security.kali.org/kali-security kali/updates main contrib non-free" >> /etc/apt/sources.list && \
echo "deb-src http://security.kali.org/kali-security kali/updates main contrib non-free" >> /etc/apt/sources.list
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -y update && apt-get -y dist-upgrade && apt-get clean

FROM centos/systemd

RUN yum -y install epel-release && \
    yum -y install gcc python-pip python-devel openssl-devel docker openssh-clients && \
    pip install docker molecule testinfra ansible && \
yum clean all

RUN mkdir /usr/src/app
WORKDIR /usr/src/app

COPY . .

CMD ["printenv"]

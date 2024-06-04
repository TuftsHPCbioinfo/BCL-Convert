
FROM centos:7
#
# You'll need to download bcl-convert-3.6.3-1.el7.x86_64.rpm from 
# https://support.illumina.com/downloads/bcl-convert-downloads.html
ADD bcl-convert-4.2.7-2.el7.x86_64.rpm /opt/bcl-convert.rpm
RUN yum install -y gdb && \
    rpm -i /opt/bcl-convert.rpm && \
    rm /opt/bcl-convert.rpm && \
    yum clean all && \
    rm -rf /var/cache/yum
ENTRYPOINT ["/usr/bin/bcl-convert"]

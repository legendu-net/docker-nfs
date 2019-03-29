FROM dclong/ubuntu_b

RUN apt-get update \
    && apt-get install -y nfs-kernel-server \
    && apt-get autoremove \
    && apt-get autoclean

RUN mkdir -p /nfs \
    && chmod 777 /nfs 

COPY settings/exports /etc/exports
COPY scripts /scripts/

EXPOSE 111 2049

ENTRYPOINT ["/scripts/sys/init.sh"]

FROM mongo

COPY rootfs /

COPY run.sh /home/mongodb/scripts

COPY setup_user.sh /home/mongodb/scripts

COPY mongod.conf /home/mongodb

WORKDIR /home/mongodb

RUN ["chmod", "+x", "/home/mongodb/scripts/"]

CMD ["/home/mongodb/scripts/run.sh"]
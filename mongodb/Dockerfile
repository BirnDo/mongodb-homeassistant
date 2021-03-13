FROM mongo

COPY run.sh /home/mongodb/scripts

COPY setup_user.sh /home/mongodb/scripts

COPY /ssl /home/mongodb/ssl

COPY mongod.conf /home/mongodb

WORKDIR /home/mongodb

RUN ["chmod", "+x", "/home/mongodb/scripts/"]

CMD ["/home/mongodb/scripts/run.sh"]
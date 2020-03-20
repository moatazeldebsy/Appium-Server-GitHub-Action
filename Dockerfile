FROM ubuntu:latest

ADD entrypoint.sh /entrypoint.sh
USER root
WORKDIR /home/app
COPY ./package.json /home/app/package.json
RUN apt-get update
RUN apt-get -y install curl gnupg
RUN curl -sL https://deb.nodesource.com/setup_11.x  | bash -
RUN apt-get -y install nodejs
RUN npm install
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
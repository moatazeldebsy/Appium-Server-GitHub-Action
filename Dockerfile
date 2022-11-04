FROM ubuntu:latest

ADD entrypoint.sh /entrypoint.sh
RUN apt-get update && \
      apt-get -y install sudo
RUN apt-get -y install curl gnupg
RUN curl -sL https://deb.nodesource.com/setup_18.x  | bash -
RUN apt-get -y install nodejs
RUN npm install npm@latest -g
RUN node -v
RUN npm -v
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

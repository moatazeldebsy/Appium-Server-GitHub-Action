FROM ubuntu:latest

ADD entrypoint.sh /entrypoint.sh
RUN apt-get update
RUN apt-get -y install curl gnupg
RUN curl -sL https://deb.nodesource.com/setup_11.x  | bash -
RUN apt-get -y install nodejs
RUN npm install npm@latest -g
RUN chmod +x /entrypoint.sh
RUN node -v
RUN npm -v
ENTRYPOINT ["/entrypoint.sh"]
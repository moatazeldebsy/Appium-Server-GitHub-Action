FROM ubuntu:latest

ADD entrypoint.sh /entrypoint.sh
RUN apt-get update
RUN apt-get install curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
RUN apt-get install nodejs
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
RUN nvm install node
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
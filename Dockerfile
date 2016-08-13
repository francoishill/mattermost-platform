FROM ubuntu:14.04

RUN apt-get update && apt-get -y install curl netcat

RUN curl https://releases.mattermost.com/3.2.0/mattermost-team-3.2.0-linux-amd64.tar.gz | tar -xvz


VOLUME /mattermost/config
VOLUME /mattermost/data

EXPOSE 80

RUN chmod +x /mattermost/bin/platform
WORKDIR /mattermost/bin

ENTRYPOINT ["./platform"]
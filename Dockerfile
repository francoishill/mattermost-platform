FROM ubuntu:14.04

RUN apt-get update && apt-get -y install curl netcat
RUN mkdir -p /mattermost/data

RUN curl https://releases.mattermost.com/3.2.0/mattermost-team-3.2.0-linux-amd64.tar.gz | tar -xvz

RUN chmod +x /mattermost/bin/platform
ENTRYPOINT ["/mattermost/bin/platform"]

EXPOSE 80

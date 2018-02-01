# mattermost-platform
This repo is used to auto-build the hub.docker repo francoishill/mattermost-platform.

Currently using **release 4.6.1** of [mattermost-platform](https://github.com/mattermost/platform)

## Quick Start

Replace `/path/to/config/dir` with the config dir on your host.

```
docker run -d -p 8080:80 -v /path/to/config/dir:/mattermost/config --name mattermost-platform francoishill/mattermost-platform
```

Refer to the [docker hub repository](https://hub.docker.com/r/francoishill/mattermost-platform/).

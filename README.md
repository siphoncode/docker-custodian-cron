docker-custodian-cron
=====================

This image is designed to be run indefinitely. It periodically triggers
`docker-custodian` at a set interval (see below).

Derived from: https://github.com/yelp/docker-custodian

*Note: we actually use a simple bash command to do the scheduling, not cron.*

Example docker-compose declaration
----------------------------------

Paste this into your `compose.yaml` file.

```yaml
custodian:
  image: getsiphon/custodian-cron:latest
  restart: always
  environment:
      INTERVAL: 86400 # seconds between each cleanup (1 day in this case)
      MAX_CONTAINER_AGE: "5days"
      MAX_IMAGE_AGE: "30days"
  volumes:
      - /var/run/docker.sock:/var/run/docker.sock
```

See the [original README](https://github.com/yelp/docker-custodian) for more
information on the available options.

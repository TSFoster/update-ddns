# Update DDNS

This script will periodically call a specified URL, and is intended to be used in conjunction with a Dynamic DNS service.

## Usage

```sh
# Required. In this example, the zzzz.io service is used, and it is assumed that $DDNS_USERNAME and $DDNS_TOKEN contain the relevant values.
DDNS_UPDATE_ADDRESS=https://zzzz.io/api/v1/update/$DDNS_USERNAME/?token=$DDNS_TOKEN

# Optional. A frequence understood by the sleep command (i.e. number followed by s/m/h). Default: 1h
DDNS_UPDATE_FREQUENCY=1h

docker run \
  --env DDNS_UPDATE_ADDRESS=$DDNS_UPDATE_ADDRESS \
  --env DDNS_UPDATE_FREQUENCY=$DDNS_UPDATE_FREQUENCY \
  tsfoster/update-ddns:latest
```

# Unbrel

For anyone who wants to run a serious LN node, with a less beautiful interface but instead:
- Up-to-date components
- Only necessary containers
- More control over your node in general.

This repository should allow anyone to move away from Umbrel after updating to version 0.5.0. It only uses the bare minimum (tor, bitcoind, LND) but you can optionally run RTL, Thunderhub and/or bos.

**NOTE**: Still a work in progress, only the bare minimum (tor, bitcoind, LND) is tested and working. 

If you stay at bitcoin-core v22, you can probably switch back to Umbrel if you would want to.

## Howto

1. Stop umbrel `~/umbrel/scripts/stop`
2. Disable umbrel
3. Check the `.env` file
4. Set the correct values for `bitcoind/bitcoin.conf`
5. Run the docker-compose script
6. Unlock your LND instance. Yes the password is still `moneyprintergobrrr` 😢
7. Enjoy.

Thunderhub/RTL is commented out in the compose config but Thunderhub should already work. RTL coming soon, or fix it yourself.

### docker-compose override
````yaml
version: '3.7'

services:
        tor_proxy:
                image: busybox
        nginx:
                image: busybox
        dashboard:
                image: busybox
        manager:
                image: busybox
        middleware:
                image: busybox
        auth:
                image: busybox
````
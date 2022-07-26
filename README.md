# Unbrel

For anyone who wants to run a serious LN node, with a less beautiful interface but instead:
- Up-to-date components
- Only necessary containers
- More control over your node in general.

This repository should allow anyone to move away from Umbrel after updating to version 0.5.x. By default it only uses the bare minimum (tor, bitcoind, LND) but you can optionally run RTL, Thunderhub, LNDg and/or lightning-shell.

**NOTE**: The apps are commented out in the compose config but [Thunderhub](https://github.com/apotdevin/thunderhub), [RTL](https://github.com/Ride-The-Lightning/RTL), [LNDg](https://github.com/cryptosharks131/lndg) and [lightning-shell](https://github.com/ibz/lightning-shell) should already work. 

If you stay at bitcoin-core v22, you can probably switch back to Umbrel if you would want to.

## Howto

1. Stop umbrel `~/umbrel/scripts/stop`
2. Disable umbrel
3. Check the `.env` file
4. Set the correct values for `bitcoind/bitcoin.conf`
5. Run the docker-compose script
6. Unlock your LND instance. Yes the password is still `moneyprintergobrrr` 😢
7. Enjoy.

The apps are commented out in the compose config but Thunderhub, RTL, LNDg and lightning-shell should already work. 

## Default images overview

You can choose your own images and versions in `.env`. See the `extra` folder for examples for other Umbrel versions but make sure to verify each line before running.

| **Component**   | **Default Image + Version**         | **Enabled by default?** | **Uses Tor?** | **Exposed by Tor** |
|-----------------|-------------------------------------|-------------------------|---------------|--------------------|
| bitcoind        | lncm/bitcoind:v22.0                 | yes                     | yes           | yes                |
| lnd             | lightninglabs/lnd:v0.14.3-beta      | yes                     | yes           | yes                |
| ThunderHub      | apotdevin/thunderhub:v0.13.13       | no                      | yes           | no                 |
| RTL             | shahanafarooqui/rtl:0.12.3          | no                      | N/A           | no                 |
| lightning-shell | dsbaars/lightning-shell:latest      | no                      | N/A           | no                 |
| LNDg            | ghcr.io/cryptosharks131/lndg:v1.1.1 | no                      | N/A           | no                 |

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
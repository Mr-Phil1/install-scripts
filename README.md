# Install-Script

- [Install-Script](#install-script)
  - [docker-compose script](#docker-compose-script)
    - [How to run this script](#how-to-run-this-script)
- [Link to the used Repos + Services:](#link-to-the-used-repos--services)

## docker-compose script

This install script run currently only on Debian distributions like Ubuntu, Linux Mint, Raspian (This is currently not tested). First this script check if on your system **curl** installed. Is this test negative, so my auto-install routine would **curl** install. After this check

### How to run this script

The first method is with curl:

- `sh -c "$(curl -fsSL https://git.io/install-docker-compose)"`

The second method is with wget (if curl is currently not installed):

- `sh -c "$(wget https://git.io/install-docker-compose -O -)"`

# Link to the used Repos + Services:

- [GitHub: Docker-Compose Repo](https://github.com/docker/compose/)
- [GitHub URL Shorter: git.io ](https://git.io)

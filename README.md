# What is this?
* Docker container
* Phantombot
* Ubuntu 18.04
* Includes beta-panel

# Functionality
* 100%. 

# How to run
You will need to manually mount the config files. Make sure you have a  botlogin.txt that suits your needs  in your configuration.
```sh
docker run -it -v /home/phantombot/phantombot-docker/config:/phantombot/config -v /etc/localtime:/etc/localtime:ro --net=host phantombot-ubuntu:latest
```

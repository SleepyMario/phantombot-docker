# What is this?
* Docker container
* Phantombot
* Ubuntu 18.04
* Includes beta-panel

# Functionality
* 100%. 

# How to run
Edit the command below according to your needs. You will need to mount the config files so they'll be saved upon exit. Make sure that the botlogin.txt that suits your needs.
```sh
docker run -it \ 
	-v /PATH/TO/CONFIG/config:/phantombot/config \
	-v /etc/localtime:/etc/localtime:ro \
	--net=host \
	sleepiestmario/phantombot
```

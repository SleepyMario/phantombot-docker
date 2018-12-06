# What is this?
* Docker container
* Phantombot
* Alpine Linux 
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

### botlogin.txt 
A template for use on twitch with https, mariadb/mysql and youtube enabled.

```sh
apioauth=<TWITCH APIOAUTH>
baseport=25000
betap=true
channel=<CHANNEL NAME>
datastore=mysqlstore
httpsFileName=/PATH/TO/keystore.jks
httpsPassword=<KEYSTORE PASSWORD>
msglimit30=19.0
musicenable=true
mysqlhost=127.0.0.1
mysqlname=<MYSQL DB>
mysqlpass=<MYSQL PWD>
mysqluser=<MYSQL USER>
oauth=<OAUTH TOKEN>
owner=<OWNER>
panelpassword=<PANEL PWD>
paneluser=<PANEL USER>
usehttps=true
user=<TWITCH USER>
webauth=<TWITCH WEBAUTH>
webauthro=<TWITCH WEBAUTHRO>
webenable=true
whisperlimit60=60.0
youtubekey=<YOUTUBE KEY>
ytauth=<YOUTUBE AUTH>
ytauthro=<YOUTUBE AUTHRO>
```

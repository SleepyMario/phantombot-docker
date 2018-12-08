# What is this?
* Docker container
* Phantombot
* Alpine Linux 
* Includes beta-panel
* Settings are saved
* Automatic backup every 24 hours

# Functionality
* 100%

# Still-to-do
* Implementing a different way of changing botlogin.txt other than manually editing it. 

--> Please let me know if anything fails to work!

# How to run
Edit the command below according to your needs. You will need to mount the config files so they'll be saved upon exit. Make sure you have a correct botlogin.txt file.
```sh
docker run -it \ 
	-v /PATH/TO/CONFIG/:/phantombot/config \
	-v /PATH/TO/BACKUP/:/backup \
	-v /etc/localtime:/etc/localtime:ro \
	--net=host \
	sleepiestmario/phantombot
```

# All botlogin.txt arguments
Below are all the args for use on twitch with any of the following optionally enabled: HTTPS, Mariadb/MySQL, Streamlabs, Gamewisp, Discord, Twitter and Youtube.

For more information on the arguments below, please click [here](https://community.phantombot.tv/t/settings-for-botlogin-txt/78) .
Booleans are set with *true* or *false*.

### BASIC CONFIGURATION
* baseport=<Starting port, normally 25000>
* betap=<Boolean, enable/disable the beta panel>
* owner=<Name of the broadcaster>
* clientid=<Typically blank or not set. Can be obtained from Twitch>
* devcommands=<To help live debug with users. Enabled by default>
* logtimezone=<Specifies a timezone for logging>
* msglimit30=<No. of messages allowed to send to Twitch within 30 secs>
* musicenable=<Boolean, to enable/disable the Youtube player web interface>
* panelpassword=<Password to access the control panel and Youtube player>
* paneluser=<User used to access the control panel and Youtube player>
* twitch_tcp_nodelay=<Boolean, enabling sends  messages faster vs costing bandwith. Default=enabled>
* usemessagequeue=<Boolean, disabling removes delay between messages. Default=enabled>
* user=<Name of your Phantombot>
* web_enable=<Boolean, enable/disable the web server>
* whisperlimit60=<Number of whispers allowed in 60 seconds. Not used at present>
### HTTPS---how-to [here](https://community.phantombot.tv/t/how-to-enable-ssl-on-phantombot/71)
* usehttps=<Boolean, requires httpsFilename and httpsPassword to be set>
* httpsFileName=</PATH/TO/keystore.jks>
* httpsPassword=<Password of keystore.jks>
### MARIADB/MYSQL/SQLITE/INISTORE
* datastore=<mysqlstore/inistore (text-based on-disk system). Default=SqlLite3>
* datastoreconfig=</PATH/TO/FILE for inistore and SQLite3. Configures different data store types> 
### FOR MARIADB/MYSQL---how-to [here](https://community.phantombot.tv/t/mysql-configuration/73)
* mysqlhost=<Hostname of host>
* mysqlname=<Name of database>
* mysqlpass=<Password of user>
* mysqlport=<Set if Mariadb/MySQL runs on alternative port>
* mysqluser=<Name of user>
### TWITCH CREDENTIALS
* oauth=<Twitch IRC chat OAuth token. Get it [here](https://twitchapps.com/tmi/) >
* apioauth=<API OAuth key. Get it [here](https://twitchapps.com/tokengen/) >
* channel=<Twitch channel phantombot will log into>
### TWITTER CREDENTIALS---how-to [here](https://community.phantombot.tv/t/twitter-integration-setup/65)
* twitterUser=<Name of Twitter account>
* twitter_consumer_key=<Twitter authorization key>
* twitter_consumer_secret=<Twitter authorization key>
* twitter_access_token=<Twitter authorization key>
* twitter_secret_token=<Twitter authorization key>
### STREAMLABS CREDENTIALS---how-to [here](https://phantombot.tv/streamlabs/)
* twitchalertskey=<Streamlabs (previously TwitchAlerts) authentication key>
* twitchalertslimit=<Max no of donations to query in 1 go. Keep low>
### DISCORD_CREDENTIALS---how-to [here](https://community.phantombot.tv/t/discord-integration-setup/64)
* discord_token= <Discord token>
### GAMEWISP CREDENTIALS---how-to [here](https://phantombot.tv/gamewisp/)
* gamewispauth=<Autorization token>
* gamewisprefresh=<Autorization refresh token>
### YOUTUBE CREDENTIALS
* youtubekey=<Optional. Phantombot provides one internally>

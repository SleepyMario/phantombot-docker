# Base docker image
FROM openjdk:8-jre-alpine 
LABEL maintainer "Sleepy Mario <theonesleepymario@gmail.com>"

# environment variables
ARG PV=2.4.2

# Install Dependencies
RUN apk add --no-cache bash curl wget unzip  

# phantombot installation 
RUN mkdir -p /root/tmp && \
 	cd /root/tmp && \
	wget https://github.com/PhantomBot/PhantomBot/releases/download/v${PV}/PhantomBot-${PV}.zip && \
 	unzip PhantomBot-${PV}.zip && \
	mv PhantomBot-${PV} /phantombot && \
	chmod u+x /phantombot/launch-service.sh /phantombot/launch.sh

# beta panel installation
RUN curl https://cloud.zackery.tv/s/Cjydq5tzkeFFWmy/download --output beta-panel.zip && \
	unzip beta-panel.zip && \
	mv beta-panel /phantombot/web/

# remove leftovers
RUN cd && \
	rm -rf /root/tmp 

# backup
RUN mkdir /backup
RUN echo "umask 0007;/bin/tar --exclude=/phantombot/lib --exclude=/phantombot/web -cjf /backup/phantombot/$(/bin/date +\%Y-\%m-\%d-\%H_\%M_\%S_\%3N).tar.bz2 /phantombot/ >>/backup/backup_phantombot.log 2>&1" > /etc/periodic/daily/phantombot
RUN chmod a+x /etc/periodic/daily/phantombot

# Open ports
EXPOSE 25000-25004

# Cron job + wrapper script
COPY start-crond /start-crond
COPY start-phantombot /start-phantombot
COPY wrapper.sh /wrapper.sh
RUN chmod a+x /start-crond
RUN chmod a+x /start-phantombot
RUN chmod a+x /wrapper.sh

# run phantombot
CMD ./wrapper.sh 

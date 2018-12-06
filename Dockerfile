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

# run phantombot
CMD cd phantombot && ./launch.sh

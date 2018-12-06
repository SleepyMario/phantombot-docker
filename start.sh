docker run -it \
	-v /PATH/TO/CONFIG/config:/phantombot/config \
	-v /etc/localtime:/etc/localtime:ro \
	--net=host \
	phantombot-test:latest

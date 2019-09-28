FROM ubuntu:19.10

RUN 	apt-get -y update && \
	apt-get install -y --no-install-recommends openjdk-8-jdk locales vim git zip unzip less wget curl handbrake-cli ffmpeg lsdvd

RUN 	localedef -f UTF-8 -i ja_JP ja_JP.UTF-8
ENV 	LANG ja_JP.UTF-8
ENV 	LANGUAGE ja_JP:ja
ENV 	LC_ALL ja_JP.UTF-8
ENV 	TZ JST-9

# embulk
RUN 	curl -o /usr/local/bin/embulk --create-dirs -L "http://dl.embulk.org/embulk-latest.jar" && \
    	chmod +x /usr/local/bin/embulk

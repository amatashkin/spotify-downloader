FROM python:alpine

RUN apk add --no-cache \
    ffmpeg build-base git

RUN git clone https://github.com/spotDL/spotify-downloader

WORKDIR /spotify-downloader
RUN pip install .

RUN mkdir /music
WORKDIR /music

ENTRYPOINT ["spotdl"]
# Docker image for spotDL (spotify-downloader)

### Information

Download your Spotify playlists and songs along with album art and metadata.
Based on spotDL (spotify-downloader)[https://github.com/spotDL/spotify-downloader]

### Building the image

You can build this image by navigating into the directory that includes the `Dockerfile` and running 
```ssh
docker build -t spotify-downloader .
```
### Running

Run container using something like this, add :

```ssh
docker run \
    --rm -ti \
    -v $PWD/music:/music \
    spotify-downloader <any spotdl parameters>
```
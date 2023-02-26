<div align="center">

# TikTok Live Recorder

TikTok Live Recorder is a simple **tiktok live streaming recorder**.

<img src="/assets/sample.png" width="450px">
</div>

## Requirements
<a href="https://phoenixnap.com/kb/ffmpeg-windows">Install FFmpeg on Windows</a>

## How To Use
  
To clone and run this application, you'll need [Git](https://git-scm.com) and [Python3](https://www.python.org/downloads/) installed on your computer. From your command line:

```bash
# Clone this repository
$ git clone https://github.com/Michele0303/TikTok-Live-Recorder
# Go into the repository
$ cd TikTok-Live-Recorder
# Install dependencies
$ pip install -r requirements.txt
# Run the app
$ python main.py -h
```

To stop the recording: press ctrl + c once time and wait a few seconds.

## Running in Docker
In addition to making this portable, using Docker Compose can automatically restart the service should it crash. I setup GitHub Action to update the Docker image every time I create a release.

```bash
docker run -it -e USERS_TO_WATCH='SOME_TT_USER' overcoded/tiktok-live-recorder     
```

For Docker Compose, download the [docker-compose.yaml](https://raw.githubusercontent.com/milesoberstadt/TikTok-Live-Recorder/main/docker-compose.yaml), make your edits to the environment variables and run the following:

```bash
docker-compose up -d
```

### Updating to the newest release
You'll need to recreate your container after pulling the latest image.

```bash
docker pull overcoded/tiktok-live-recorder:latest
docker run -it -e USERS_TO_WATCH='SOME_TT_USER' overcoded/tiktok-live-recorder     
```

For Docker Compose
```bash
docker pull overcoded/tiktok-live-recorder:latest
docker-compose down && docker-compose up -d && docker-compose logs -f
```

## To-Do List
- [x] Automatic Recording
- [x] Recording by room_id
- [ ] Recoding by tiktok live url
- [ ] Using proxy to bypass login restriction in some country. (only to get the room_id)
  


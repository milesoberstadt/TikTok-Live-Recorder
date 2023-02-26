FROM python:3-alpine
RUN mkdir /app
COPY * /app/
WORKDIR /app
RUN pip install -r requirements.txt
RUN apk add  --no-cache ffmpeg
ENTRYPOINT ["python3","main.py", "-m", "automatic"]

FROM python:3-buster
RUN mkdir /app
COPY * /app/
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python3","main.py", "-m", "automatic"]

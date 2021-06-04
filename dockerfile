FROM python:3.8.10-alpine3.13
WORKDIR /bot
COPY ./src/requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY ./src/ .
CMD ["python3", "-m", "bot"]
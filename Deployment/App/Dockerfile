FROM python:3.8


COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

ENV ENVIRONMENT  REDIS_HOST REDIS_PORT REDIS_DB
EXPOSE 8080

CMD ["python", "hello.py"]

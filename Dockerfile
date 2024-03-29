FROM python:3.10-alpine

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY . /app

EXPOSE 8000

ENV FLASK_APP=app.py

CMD ["flask", "run", "--host", "0.0.0.0"]
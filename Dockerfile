FROM python:3-alpine

ADD requirements.txt /requirements.txt
RUN pip install -r requirements.txt
ADD app.py /app.py

EXPOSE 80
CMD gunicorn app:app -b 0.0.0.0:80

FROM docker.arvancloud.ir/python:3.9-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

# ENV DJANGO_SETTINGS_MODULE=note.settings
ENV DATABASE_NAME=DB
ENV DATABASE_USER=USER
ENV DATABASE_PASSWORD=PASSWORD

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
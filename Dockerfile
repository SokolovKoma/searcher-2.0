FROM python:3.12-slim


WORKDIR /app


COPY requirements.txt requirements.txt
COPY app.py app.py
COPY posts.csv posts.csv


RUN pip install --no-cache-dir -r requirements.txt


EXPOSE 5000


CMD ["python", "app.py"]

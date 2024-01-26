FROM python:3.11.7-slim

WORKDIR /testpush

COPY ./requirements.txt /testpush/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /testpush/requirements.txt

COPY ./app /testpush/app

EXPOSE 80 

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]

# If running behind a proxy like Nginx or Traefik add --proxy-headers
# CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80", "--proxy-headers"]
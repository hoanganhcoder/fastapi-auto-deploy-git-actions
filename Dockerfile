FROM python:3.11.7-slim

WORKDIR .

COPY . .

RUN pip install --no-cache-dir --upgrade -r requirements.txt

EXPOSE 80 

CMD ["uvicorn", "app.main:app", "--host", "127.0.0.1", "--port", "80"]

# If running behind a proxy like Nginx or Traefik add --proxy-headers
# CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80", "--proxy-headers"]
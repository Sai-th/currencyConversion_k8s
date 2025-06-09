FROM python:3.11-slim 
WORKDIR /app 
RUN pip install --no-cache-dir Flask==2.3.3 requests==2.31.0
COPY . .
EXPOSE 5050
CMD ["python", "app.py"]
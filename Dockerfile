FROM python:3.10.5

WORKDIR /app
COPY  requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt
COPY . .
                          
CMD ["gunicorn","-w","3","-k","uvicorn.workers.UvicornWorker","main:app"]

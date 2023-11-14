FROM python:3.9-slim

WORKDIR /app

COPY ./build/web ./

CMD ["python","-m","http.server","4007"]
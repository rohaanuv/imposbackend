FROM python:3.13-rc-alpine3.19

WORKDIR /app

COPY requirements.txt /app/

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5000

CMD [ "gunicorn","-b","0.0.0.0:5000","-w","4", "app:app" ]

FROM node

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=qwerty

RUN mkdir -p testapp

RUN docker compose -f docker-compose.yaml up -d

COPY . /testapp

CMD ["node","/testapp/server.js"]
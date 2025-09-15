FROM node

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=qwerty

RUN mkdir -p testapp


COPY . /testapp
RUN docker compose -f docker-compose.yaml up -d


CMD ["node","/testapp/server.js"]
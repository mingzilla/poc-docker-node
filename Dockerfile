FROM node:20

WORKDIR /code
COPY app.js /code/app.js

EXPOSE 3000

ENTRYPOINT [ "node", "/code/app.js", "-l", "-c" ]

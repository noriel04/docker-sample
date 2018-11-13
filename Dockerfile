# Node server
FROM node:8
WORKDIR /usr/src/app
COPY ["package*.json", "./"]
RUN npm install
COPY index.js .
EXPOSE 3000
ENTRYPOINT ["node"]
CMD ["index.js"]
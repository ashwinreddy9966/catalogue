FROM       node:18
RUN        useradd roboshop
WORKDIR    /home/roboshop
COPY       server.js .
COPY       package.json .
RUN        npm install
ENTRYPOINT ["node", "server.js"]
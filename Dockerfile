FROM       node:18
RUN        useradd roboshop
WORKDIR    /home/roboshop
COPY       server.js .
COPY       package.json .
RUN        npm install
RUN        curl -s -L -o https://s3.amazonaws.com/rds-downloads/rds-combined-ca-bundle.pem
ENTRYPOINT ["node", "server.js"]
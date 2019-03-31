FROM node:latest
MAINTAINER Vamsi Ramakrishnan "vamsi.ramakrishnan@oracle.com"

RUN mkdir se-symposium-frontend
WORKDIR se-symposium-frontend


COPY . .
RUN npm install

COPY . .

USER node
EXPOSE 4000

CMD ["npm", "run", "start"]

FROM node:latest
RUN useradd -m web
USER web
WORKDIR /home/web
RUN git clone https://github.com/BrooksPatton/simple-web-server
WORKDIR /home/web/simple-web-server
RUN npm install
EXPOSE 3000
CMD ["npm", "start"]


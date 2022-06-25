FROM node:12.16.3


WORKDIR /www/app

COPY . .

RUN npm install -g @ionic/cli
RUN npm install

EXPOSE 8100

ENTRYPOINT ["ionic"]
CMD ["serve", "8100", "--address", "0.0.0.0"]

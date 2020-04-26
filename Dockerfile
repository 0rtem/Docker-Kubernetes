#base image
FROM node:alpine

# if folder doesn't exist it will be created
WORKDIR /usr/app


COPY ./package.json ./

# installing npm dependencies
RUN npm install

COPY ./ ./

# Default command

CMD ["npm", "start"]
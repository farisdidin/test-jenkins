FROM node:lts-alpine AS builder
 
WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

# install and cache app dependencies
COPY package.json /app/package.json
RUN npm install
RUN npm install @vue/cli@4.5.4 -g

# start app
CMD ["npm", "run", "serve"]

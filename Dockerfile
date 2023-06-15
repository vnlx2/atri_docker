FROM node:18-alpine

# Create app directory
WORKDIR /app

# Install depedencies
COPY package.json yarn.lock ./
RUN yarn install
RUN yarn global add nodemon

CMD [ "yarn", "start" ]

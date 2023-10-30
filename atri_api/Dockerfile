FROM node:20-alpine

# Create app directory
WORKDIR /app

# Install depedencies
RUN apk add git
RUN git clone https://github.com/vnlx2/atri_api.git
WORKDIR /app/atri_api
RUN npm install -f --verbose
RUN npm run compile
RUN cp package.json ../package.json

WORKDIR /app
RUN npm install --production --verbose
RUN rm -r /app/atri_api

CMD [ "node", "build/index.js" ]

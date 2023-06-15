FROM node:18-alpine

# Create app directory
WORKDIR /app

# Install depedencies
RUN apk add git
RUN git clone https://github.com/vnlx2/atri_api.git
WORKDIR /app/atri_api
RUN npm install -f --verbose

CMD [ "node", "app.js" ]

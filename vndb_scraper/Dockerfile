FROM node:18-alpine

# Create app directory
WORKDIR /app

# Install depedencies
RUN apk add git
RUN git clone https://github.com/vnlx2/vndb_scraper.git
WORKDIR /app/vndb_scraper
RUN npm install -f --verbose

CMD [ "node", "index.js" ]

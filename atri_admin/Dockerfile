FROM node:20-alpine

# Create app directory
WORKDIR /app

# Install depedencies
RUN apk add git
RUN git clone https://github.com/vnlx2/atri_web_panel.git
WORKDIR /app/atri_web_panel
RUN yarn install --verbose && \
    yarn build --dotenv .env --verbose

EXPOSE 80
COPY .env.prod ./.env.prod

CMD [ "node", "--env-file", ".env.prod",".output/server/index.mjs" ]

FROM node:18-alpine

# Create app directory
RUN mkdir -p /home/atri/
WORKDIR /home/atri/

# Install depedencies
RUN yarn install
RUN yarn global add nodemon
RUN apk add git
RUN git clone https://github.com/vnlx2/atri_api.git

CMD [ "yarn", "run", "start" ]
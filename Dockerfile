FROM node:10-alpine

# Create app directory
WORKDIR /usr/src/app

# Copy both package.json and package-lock.json
COPY apps/todo/source/base/package*.json ./

# Install app dependencies
# RUN npm install
# For production use
RUN npm ci --only=production

# Bundle app source
COPY apps/todo/source/base .

EXPOSE 8080
CMD [ "node", "app.js" ]

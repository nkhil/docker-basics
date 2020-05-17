FROM node:10

#create working directory to hold the application code
WORKDIR /usr/src/app 

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

# install dependencies
RUN npm install

# If you are building your code for production
# RUN npm ci --only=production
# Read more here: https://blog.npmjs.org/post/171556855892/introducing-npm-ci-for-faster-more-reliable

# Bundle app source
COPY . .

# Use EXPOSE to have docker daemon map port 8080
EXPOSE 8080

# Start your server
CMD [ "node", "index.js" ]

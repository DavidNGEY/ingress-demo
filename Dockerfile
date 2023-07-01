FROM node:latest

WORKDIR /usr/src/app

# Install deps
RUN apt-get update

# Create certificates
RUN apt-get install ca-certificates

# Install package.json dependencies
COPY package.json .
RUN npm install

# Copy source code
ADD . /usr/src/app

CMD ["npm", "run", "start"]
EXPOSE 3000
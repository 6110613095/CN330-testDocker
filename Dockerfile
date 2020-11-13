FROM node:14-alpine
WORKDIR /app
COPY package.json package-lock.json ./
 
#or COPY package*.json ./ 
RUN npm install
COPY . . 
CMD ["npm","start"]
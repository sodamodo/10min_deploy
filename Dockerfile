FROM node:alpine
COPY package.json package.json
RUN npm install


# Copy all to install
COPY . .
EXPOSE 3000

CMD ["npm", "start"]

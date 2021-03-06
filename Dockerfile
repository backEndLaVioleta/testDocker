FROM node:16

WORKDIR /usr/src/api

COPY package*.json /usr/src/api/

COPY ./dist ./dist

RUN npm ci --only=production

# CMD npm run start:prod
CMD ["npm", "run", "start:prod"]
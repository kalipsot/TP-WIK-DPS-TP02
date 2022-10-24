FROM node

WORKDIR /usr

COPY package.json ./


COPY index.ts ./index.ts



RUN npm install

RUN npx tsc .\index.ts

EXPOSE 4004

CMD ["npm","run","start"]
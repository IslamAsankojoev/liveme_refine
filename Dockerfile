FROM node:16.17

COPY package.json package-lock.json ./

RUN npm install && mkdir /liveme_refine && mv ./node_modules ./liveme_refine

WORKDIR /liveme_refine

COPY . .

RUN npm run build

EXPOSE 4000
CMD ["npm","run", "start"]
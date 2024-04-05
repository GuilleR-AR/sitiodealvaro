FROM node:lts-slim
WORKDIR /site
RUN apt update && apt install hugo -y
COPY site/tailwind.config.js site/postcss.config.js site/package.json /site/
RUN npm install
EXPOSE 1313
CMD ["npm" , "run", "start"]
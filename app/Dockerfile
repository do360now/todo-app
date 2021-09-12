FROM arm32v7/node
RUN apt-get update
RUN apt-get dist-upgrade
WORKDIR /app
COPY . .
RUN yarn install --production
CMD ["node", "src/index.js"]

# FROM node:16
# RUN apt-get update
# RUN apt-get dist-upgrade
# WORKDIR /app
# COPY . .
# RUN yarn install --production
# CMD ["node", "src/index.js"]
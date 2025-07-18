FROM node:23-alpine AS build
ARG NUXT_PUBLIC_COMMIT_HASH
ENV NUXT_PUBLIC_COMMIT_HASH=${NUXT_PUBLIC_COMMIT_HASH}
WORKDIR /usr/src/app
COPY . .
RUN apk add --no-cache python3 py3-pip make g++ curl unzip rclone
RUN npm install
RUN npm run build
CMD [ "node", "/usr/src/app/.output/server/index.mjs" ]

FROM node:23-alpine AS build
ARG NUXT_PUBLIC_COMMIT_HASH
ENV NUXT_PUBLIC_COMMIT_HASH=${NUXT_PUBLIC_COMMIT_HASH}
WORKDIR /usr/src/app
COPY . .
RUN npm install
RUN npm run build

# FROM node:23-alpine AS deploy
# WORKDIR /usr/src/app
# COPY --from=build --chmod=555 /usr/src/app/.output /usr/src/app/.output

CMD [ "node", "/usr/src/app/.output/server/index.mjs" ]

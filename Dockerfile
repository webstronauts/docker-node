FROM node:8.9-alpine

ENV NODE_ENV production

# Automatically export any node_modules binaries into the $PATH
ENV PATH /home/node/node_modules/.bin:${PATH}

# Install a tiny `init` for containers, see https://github.com/krallin/tini.
RUN apk add --no-cache tini

# Create application directory.
WORKDIR /home/node

# Copy package and lockfile first, to prevent rebuilding
# each time the dependencies change.
ONBUILD COPY package.json yarn.lock ./

# Do not install dev dependencies.
ONBUILD RUN yarn install --prod --frozen-lockfile \
    && yarn cache clean

# Bundle project source.
ONBUILD COPY . .

USER node

ENTRYPOINT [ "/sbin/tini", "--" ]

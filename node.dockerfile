FROM node:12-alpine

ENV NODE_ENV="development"
ENV PORT="4000"

RUN mkdir -p /home/node
WORKDIR /home/node
COPY --chown=node:node ./node_project /home/node

RUN npm cache clean --force
RUN npm install
EXPOSE ${PORT}
USER node

ENTRYPOINT ["npm", "run", "dev"]
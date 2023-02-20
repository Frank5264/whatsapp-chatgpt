FROM node:bullseye-slim

WORKDIR /app/

ENV OPENAI_API_KEY "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"
ENV PREFIX_ENABLED "True"

COPY . .

RUN npm install
RUN npm install vite-node
RUN apt-get update
RUN apt-get install chromium -y

CMD ["npm", "run", "start"]

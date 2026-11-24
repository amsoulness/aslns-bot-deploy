FROM node:26-alpine
RUN apk add --no-cache git ffmpeg libwebp-tools python3 make g++
RUN git clone --depth 1 https://github.com/amsoulness/amsoulness-md.git /app
WORKDIR /app
RUN npm install -g yarn@1.22.22 && yarn install --frozen-lockfile
ENV AUTO_UPDATE=false BOT_NAME=Amsoulness
CMD ["node", "index.js"]

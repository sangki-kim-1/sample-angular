FROM node:18-alpine

WORKDIR /usr/local/app

COPY . .

RUN npm install

# default port 를 명시하기 위해 EXPOSE 구문 사용(포트 변경 목적이 아니라면 없어도 되는 구문)
EXPOSE 4200

ENTRYPOINT npm run start -- --host 0

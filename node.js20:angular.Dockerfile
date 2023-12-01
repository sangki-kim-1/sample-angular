FROM node:20-alpine

WORKDIR /usr/local/app

COPY . .

# 패키지 버전 변경없이 정확히 생성하기 위해 ci 로 모듈 설치(package-lock.json 필수)
RUN npm ci

# default port 를 명시하기 위해 EXPOSE 사용(포트 변경 목적이 아니라면 없어도 된다.)
EXPOSE 4200

ENTRYPOINT npm run start -- --host 0

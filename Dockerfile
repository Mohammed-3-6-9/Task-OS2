FROM alpine:latest

RUN apk add --no-cache g++ iputils

WORKDIR /app

COPY code.cpp .

RUN g++ code.cpp -o app

CMD ["sh", "-c", "./app && sh"]

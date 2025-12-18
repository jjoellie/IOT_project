FROM debian:bullseye

RUN apt-get update && apt-get install -y \
    g++ \
    make \
    pigpio \
    pigpio-tools \
    libpigpio-dev \
    && apt-get clean

WORKDIR /app

COPY main.c .

RUN g++ -o led_app main.cpp -lpigpio -lrt -lpthread

CMD ["./led_app"]

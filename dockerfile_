FROM arm32v7/debian:bullseye

RUN apt-get update && apt-get install -y \
    gcc \
    pigpio \
    pigpio-tools \
    libpigpio-dev \
    && apt-get clean

WORKDIR /app

COPY main.c .

RUN gcc -o led_test main.c -lpigpio -lrt -lpthread

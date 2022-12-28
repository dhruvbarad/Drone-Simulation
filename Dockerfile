# Use Ubuntu 20.04 as base operating system
FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
    build-essential \
    libssl-dev \
    zlib1g-dev

RUN mkdir -p /app

WORKDIR /app

COPY ./ /app

# Build the project code.
RUN make -j

CMD ./build/bin/transit_service 8081 apps/transit_service/web/
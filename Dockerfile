FROM ubuntu:18.04

RUN apt-get update -y

RUN DEBIAN_FRONTEND=noninteractive TZ=CA/Toronto apt install ninja-build cmake gcc g++ make libboost-all-dev protobuf-compiler -y

ENTRYPOINT ["tail", "-f", "/dev/null"]


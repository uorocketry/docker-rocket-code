FROM ubuntu:18.04

RUN apt-get update -y

COPY setup-script.sh /root/setup-script.sh

RUN DEBIAN_FRONTEND=noninteractive TZ=CA/Toronto apt install ninja-build cmake gcc g++ make libboost-all-dev protobuf-compiler -y

ENTRYPOINT ["tail", "-f", "/dev/null"]


FROM ubuntu:18.04 

RUN mkdir -p /home/pfa

COPY . /home/pfa

RUN apt-get update && apt-get install -y apt-utils

RUN apt-get install -y python3

RUN apt install -y libboost-system1.65-dev && \
    apt install -y libboost-program-options1.65-dev && \
    apt install -y libboost-thread1.65-dev

CMD [ "/bin/bash" ]



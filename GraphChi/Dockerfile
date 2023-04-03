FROM ubuntu 

RUN mkdir -p /home/pfa

RUN apt-get update && apt-get install libgomp1

COPY . /home/pfa

CMD ["/bin/bash"]

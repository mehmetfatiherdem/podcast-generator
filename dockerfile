# dockerfile controls how the server will create the virtual machine
FROM ubuntu:22.00

RUN apt-get update && apt-get install -y \
  python3.10 \
  python3-pip \
  git

RUN pip3 install PyYaml

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["entrypoint.sh "]
FROM python:3.12.0-bookworm

RUN python3 -m pip install taky
RUN mkdir -p /taky
WORKDIR /taky

ADD entry.sh entry.sh
RUN chmod +x entry.sh

RUN adduser taky_daemon

RUN mkdir -p /home/taky
WORKDIR /home/taky

ENTRYPOINT ["/taky/entry.sh"]

CMD ["taky"]
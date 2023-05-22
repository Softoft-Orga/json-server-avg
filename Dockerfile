FROM ubuntu:latest
LABEL authors="bueck"

ENTRYPOINT ["top", "-b"]
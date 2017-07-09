FROM alpine:3.6
RUN apk update
RUN apk add --no-cache --update bash

COPY sendmail.sh .
RUN chmod +x sendmail.sh

ENTRYPOINT ["/bin/bash", "-c", "./sendmail.sh ${*}", "--"]

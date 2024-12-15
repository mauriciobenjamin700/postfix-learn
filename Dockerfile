FROM ubuntu:20.04

# Install dependencies

RUN apt-get update && apt-get upgrade -y

RUN apt-get install postfix mailutils ca-certificates mutt -y

RUN cp /etc/postfix/main.cf /etc/postfix/main.cf.bk

RUN rm /etc/postfix/main.cf

COPY ./configs/main.cf /etc/postfix/main.cf
COPY ./configs/sasl_passwd /etc/postfix/sasl_passwd

RUN postmap /etc/postfix/main.cf
RUN postmap /etc/postfix/sasl_passwd

#CMD ["service", "postfix", "restart"]

# Keep the container running
CMD ["tail", "-f", "/dev/null"]
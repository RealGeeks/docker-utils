FROM debian:buster-slim

RUN apt-get update && apt-get install -y \
  curl \
  dig \
  netcat \
  awscli \
  kubectl \
  default-mysql-client \
  postgresql-client

CMD ["bash"]
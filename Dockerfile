FROM debian:buster-slim

RUN apt-get update && apt-get install -y \
  curl \
  dnsutils \
  netcat \
  awscli \
  default-mysql-client \
  postgresql-client

RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.14.7/bin/linux/amd64/kubectl && \
  chmod +x ./kubectl && \
  mv ./kubectl /usr/local/bin/kubectl

CMD ["bash"]
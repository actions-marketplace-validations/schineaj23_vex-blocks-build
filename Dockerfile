FROM ubuntu:18.04

RUN apt-get update

# Install GCC & Clang
RUN apt-get install build-essential -y
RUN apt-get install clang -y

# Install 7z & cURL
RUN apt-get install p7zip-full -y
RUN apt-get install curl -y

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

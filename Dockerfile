
FROM docker.totvs.io/ios/loboguara:17.3.0.8

ADD src /src
ADD includes /includes
ADD tests /tests

RUN apt-get -y install python3
RUN python3 --version

WORKDIR /src


FROM docker.totvs.io/ios/loboguara:17.3.0.8

ADD src /src
ADD includes /includes
ADD test /test

RUN apt-get -y install python
RUN python --version

WORKDIR /src

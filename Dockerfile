
FROM docker.totvs.io/ios/loboguara:17.3.0.8

ADD src /src
ADD includes /includes

WORKDIR /src

FROM docker.totvs.io/framesp_ci/fastcompile:frame as fast
FROM docker.totvs.io/framesp_ci/loboguara:17.3.0.8

COPY --from=fast /usr/local/FastCompile /usr/local/ 
COPY --from=fast /usr/local/libappre.so /usr/local/ 
COPY --from=fast /usr/local/lib_crypto.so /usr/local/ 
COPY --from=fast /usr/local/libzip.so.5 /usr/local/ 
ENV TZ America/Sao_Paulo
ARG LANG=PORTUGUESE
ADD src /src
ADD includes /includes
ADD build/rpo /app-data/rpo
ADD build/fastComp.sh /usr/local
ADD build/fastPatch.sh /usr/local
RUN mkdir /artifacts/
WORKDIR /src

ENV APPSERVER_ENVIRONMENT_RPOLANGUAGE=$LANG
ENV APPSERVER_GENERAL_CONSOLELOG=1

FROM docker.totvs.io/framesp_ci/fastcompile:frame as fast
FROM docker.totvs.io/framesp_ci/loboguara:17.3.0.8

COPY --from=fast /usr/local/FastCompile /usr/local/ 
COPY --from=fast /usr/local/libappre.so /usr/local/ 
COPY --from=fast /usr/local/lib_crypto.so /usr/local/ 
COPY --from=fast /usr/local/libzip.so.5 /usr/local/ 

ENV TZ America/Sao_Paulo
ADD test/tests /tests
ADD includes /includes
#O arquivo de rpo sera copiado da build pelo yaml 
ADD build/rpo /app-data/rpo
RUN mkdir /app-data/lib-patch
ADD build/tests/lib-patch /app-data/lib-patch

ADD build/tests/compTests.sh /usr/local
ADD build/tests/runTest.sh /usr/local
ADD build/tests/applyPatch.sh /usr/local

WORKDIR /tests

ENV APPSERVER_ENVIRONMENT_RPOLANGUAGE=PORTUGUESE
ENV APPSERVER_GENERAL_CONSOLELOG=1

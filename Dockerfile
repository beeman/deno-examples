FROM maxmcd/deno:slim
RUN mkdir /apps
WORKDIR /apps
RUN ln -s /opt/deno /bin/deno

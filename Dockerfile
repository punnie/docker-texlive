FROM debian:stretch

RUN set -x \
    && apt-get update \
    && apt-get install -y --no-install-recommends texlive-full \
    && rm -rf /var/lib/apt/lists/*

COPY Fontin* /usr/local/share/fonts/

VOLUME /usr/src/tex
WORKDIR /usr/src/tex

ENTRYPOINT ["xelatex"]

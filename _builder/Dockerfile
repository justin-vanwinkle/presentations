FROM ubuntu

ENV REVEAL_JS_VERSION=3.7.0

VOLUME /app/talk

RUN apt-get update && \
    apt-get install -y pandoc \
        curl \
        ca-certificates \
        bash \
        inotify-tools \
        sudo \
        rsync \
        coreutils \
        python && \
    mkdir /reveal.js && \
    curl -sSL https://github.com/hakimel/reveal.js/archive/${REVEAL_JS_VERSION}.tar.gz | tar xz --strip 1 -C /reveal.js && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

ADD start.sh .

CMD bash ./start.sh

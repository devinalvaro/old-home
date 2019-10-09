FROM devinalvaro/home

RUN apt-get update && apt-get install -y \
            ssh \
            zlib1g-dev \
            --no-install-recommends

CMD ["fish"]

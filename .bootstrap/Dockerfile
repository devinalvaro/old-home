FROM ubuntu:19.04

WORKDIR /home
ENV HOME /home

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
            build-essential \
            curl \
            docker-compose \
            docker.io \
            fd-find \
            fish \
            fzf \
            git \
            lastpass-cli \
            neovim \
            python3 \
            python3-dev \
            python3-pip \
            python3-setuptools \
            ripgrep \
            ssh \
            wget \
            --no-install-recommends \
            && rm -rf /var/lib/apt/lists/*

# fd
RUN ln -sfn /usr/bin/fdfind /usr/local/bin/fd

# node
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - \
            && apt-get install -y nodejs

# go
RUN wget -c https://dl.google.com/go/go1.13.1.linux-amd64.tar.gz \
            && tar -C /usr/local -xzf go1.13.1.linux-amd64.tar.gz \
            && rm -f go1.13.1.linux-amd64.tar.gz \
            && ln -sfn /usr/local/go/bin/go /usr/local/bin/go

CMD ["fish"]

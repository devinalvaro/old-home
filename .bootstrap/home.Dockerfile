FROM ubuntu:19.04

WORKDIR /home
ENV HOME /home

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
                build-essential \
                curl \
                # docker-compose \
                # docker.io \
                fd-find \
                fish \
                fzf \
                git \
                neovim \
                nodejs \
                npm \
                python3 \
                python3-dev \
                python3-pip \
                python3-setuptools \
                ripgrep \
                wget \
                --no-install-recommends

# fd
RUN ln -sfn /usr/bin/fdfind /usr/local/bin/fd

# go
ENV PATH "/usr/local/go/bin:${PATH}"
RUN wget -c https://dl.google.com/go/go1.13.1.linux-amd64.tar.gz \
                && tar -C /usr/local -xzf go1.13.1.linux-amd64.tar.gz \
                && rm -f go1.13.1.linux-amd64.tar.gz \
                && ln -sfn /usr/local/go/bin/go /usr/local/bin/go

# rust
ENV PATH "${HOME}/.cargo/bin:${PATH}"
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y \
                && rustup component add rls rust-analysis rust-src \
                && rustup component add rustfmt

CMD ["fish"]

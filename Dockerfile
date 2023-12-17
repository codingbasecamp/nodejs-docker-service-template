FROM nginx:latest

WORKDIR /

RUN apt-get update && \
    apt-get install unzip && \
    apt-get -y install nano && \
    curl -fsSL https://fnm.vercel.app/install | bash -s -- --skip-shell  && \
    echo '# fnm \nexport PATH="/root/.local/share/fnm:$PATH"\neval "$(fnm env --use-on-cd --shell=bash)"' > ~/.bashrc && \
    . ~/.bashrc

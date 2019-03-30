FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    unzip \
 && rm -rf /var/lib/apt/lists/*

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -

RUN apt-get update && apt-get install -y \
    nodejs=6* \
 && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /workspace/ghost

RUN curl -sL https://github.com/TryGhost/Ghost/releases/download/0.11.9/Ghost-0.11.9.zip -o /tmp/ghost.zip

RUN unzip /tmp/ghost.zip -d /workspace/ghost

RUN cd /workspace/ghost && npm -s install

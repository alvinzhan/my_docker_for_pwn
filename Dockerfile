FROM ubuntu
MAINTAINER Alvin_Zhan <u10100155@lssh.tp.edu.tw>

RUN dpkg --add-architecture i386 && \
    apt-get -y update && \
    apt install -y \
    sudo \
    socat \
    gdb \
    gdb-multiarch \
    libc6-dbg \
    libc6-dbg:i386 git binutils \
    gcc-multilib \
    g++-multilib \
    curl \
    wget \
    make \
    libssl-dev \
    build-essential \
    python \
    python3 \
    python-pip \
    python3-pip \
    ruby \
    ruby-dev \
    radare2 \
    netcat \
    tmux \
    nasm \
    ltrace \
    strace \
    vim \
    netcat

RUN pip install --upgrade setuptools && \
    pip install --no-cache-dir \
    ropgadget \
    pwntools && \
    pip install --upgrade pwntools

RUN gem install one_gadget seccomp-tools && rm -rf /var/lib/gems/2.*/cache/*

RUN git clone https://github.com/scwuaptx/peda ~/peda \
    && git clone https://github.com/scwuaptx/Pwngdb.git ~/Pwngdb \
    && cp ~/Pwngdb/.gdbinit ~/

RUN gem install one_gadget seccomp-tools

EXPOSE 9999

ENTRYPOINT ["/bin/bash"]
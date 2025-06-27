# Kali Linux minimal base
FROM kalilinux/kali-rolling

# Install core tools (minimal set)
RUN apt-get update -y && \
    apt-get install -y --no-install-recommends \
    kali-linux-headless \
    kali-tools-top10 \
    python3 \
    python3-pip \
    python3-venv \
    git \
    curl \
    zsh \
    tmux \
    nmap \
    netcat \
    socat \
    tcpdump \
    wireshark-common \
    dnsutils \
    iputils-ping \
    procps \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Create gitpod user with sudo
RUN useradd -l -m -s /bin/zsh gitpod && \
    echo "gitpod ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Set up Zsh environment
USER gitpod
WORKDIR /home/gitpod
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
COPY --chown=gitpod:gitpod .zshrc .zshrc

# Install Python security tools in virtual environment
RUN python3 -m venv .venv && \
    . .venv/bin/activate && \
    pip install --no-cache-dir requests scapy impacket

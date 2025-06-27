FROM kalilinux/kali-rolling

# Install core system tools
RUN apt-get update && \
    apt-get install -y \
    sudo \
    git \
    curl \
    zsh \
    kali-linux-core \
    python3-pip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Create Gitpod user with sudo
RUN useradd -l -m -s /bin/zsh gitpod && \
    echo "gitpod ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Switch to user context
USER gitpod
WORKDIR /home/gitpod

# Install common pentesting tools (customize as needed)
RUN sudo apt-get update && \
    sudo apt-get install -y \
    nmap \
    wireshark-common \
    burpsuite \
    sqlmap \
    metasploit-framework \
    && sudo apt-get clean

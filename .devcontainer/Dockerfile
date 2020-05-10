FROM ubuntu:20.04

ARG USERNAME=remote
ARG USER_UID=1000
ARG USER_GID=$USER_UID

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get -y install --no-install-recommends apt-utils dialog 2>&1 \
    #
    # Create a non-root user to use if preferred - see https://aka.ms/vscode-remote/containers/non-root-user.
    && groupadd --gid $USER_GID $USERNAME \
    && useradd -s /bin/bash --uid $USER_UID --gid $USER_GID -m $USERNAME \
    #
    # Verify git, needed tools installed
    && DEBIAN_FRONTEND=noninteractive apt-get -y install git openssh-client less iproute2 procps curl lsb-release \
    #
    # Clean up
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*
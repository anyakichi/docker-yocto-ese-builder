ARG base=kirkstone
FROM anyakichi/yocto-builder:${base}

RUN \
    apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y \
        git-lfs \
    && rm -rf /var/lib/apt/lists/*

ADD https://storage.googleapis.com/git-repo-downloads/repo /usr/local/bin/repo
RUN chmod a+rx /usr/local/bin/repo

COPY buildenv.d/* /etc/buildenv.d/

ENV \
    REPO_GROUP=all \
    REPO_REF=master \
    YOCTO_BITBAKE_TARGET=mc:x86-2023:core-image-sato-sdk

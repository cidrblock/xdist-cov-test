FROM fedora:40

ENV PIP_ROOT_USER_ACTION=ignore

RUN <<EOF
    dnf install -y git python3-pip which
    mkdir /app
EOF

COPY <<EOF /run.sh
    #! /bin/sh
    set -ex
    cd /app
    python3 -m pip install .[test]
    tox -e py312
EOF
RUN chmod +x /run.sh

WORKDIR /app
CMD ["sh", "/run.sh"]
 
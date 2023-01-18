FROM golang:1.14

WORKDIR /work

RUN apt-get update && apt-get install -y git build-essential

RUN git config --global user.email "DEVNET@xinfin.com"
RUN git config --global user.name "Xinfin-devnet"

RUN git clone https://github.com/XinFinOrg/XDC-Subnet.git && \
        (cd XDC-Subnet && git checkout clean-up-config && mv common/constants/constants.go.devnet common/constants.go && make)

# ARG is for breaking cache, always pull latest commit
ARG TIME
RUN echo "TIME: ${TIME}" && cd XDC-Subnet && git pull && make
RUN cp /work/XDPoSChain/build/bin/XDC /usr/bin && chmod +x /usr/bin/XDC

ENTRYPOINT ["bash","/work/start.sh"]

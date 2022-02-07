FROM golang:1.14

WORKDIR /work

RUN apt-get update && apt-get install -y git build-essential

RUN git clone https://github.com/hash-laboratories-au/XDPoSChain.git && \
	(cd XDPoSChain && git checkout dev-upgrade && make)

RUN cp /work/XDPoSChain/build/bin/XDC /usr/bin && chmod +x /usr/bin/XDC

EXPOSE 8545
EXPOSE 8546
EXPOSE 30304
EXPOSE 30303

ENTRYPOINT ["bash","/work/start.sh"]

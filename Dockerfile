FROM yobasystems/alpine:latest

RUN apk add -update git openssh

WORKDIR /tmp/
RUN git clone https://github.com/dominictayloruk/async-cache-warmer  && rm -rf /tmp/async-cache-warmer/.git

yobasystems/alpine:latest

RUN apk add -update python py-pip

COPY --from=0 /tmp/async-cache-warmer /root/async-cache-warmer
WORKDIR /root/async-cache-warmer

RUN apk update && apk add libxml2-dev libxslt-dev gcc g++ make
RUN ls -l /usr/include/ /usr/local/include && pip install --upgrade asyncio aiohttp lxml requests tabulate
RUN ls -l /root/async-cache-warmer/
ENTRYPOINT ["/root/async-cache-warmer/main.py"]
#CMD [ "-h"]

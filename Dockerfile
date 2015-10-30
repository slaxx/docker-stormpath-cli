FROM debian:wheezy

RUN apt-get update && apt-get install -y git wget python python-pip
RUN pip install stormpath-cli


RUN useradd -ms /bin/bash stormpath

RUN mkdir /home/stormpath/.stormpath
ADD ./apiKey.properties /home/stormpath/.stormpath/
RUN chmod go-rwx /home/stormpath/.stormpath/apiKey.properties
RUN chown -R stormpath:stormpath /home/stormpath/

USER stormpath
WORKDIR /home/stormpath

RUN stormpath setup

ENTRYPOINT ["stormpath"]
CMD ["--help"]



FROM ubuntu:bionic

RUN apt-get update
RUN apt-get install -y unzip curl libcurl4 libssl1.0.0
RUN curl https://minecraft.azureedge.net/bin-linux/bedrock-server-1.18.12.01.zip --output bedrock-server.zip
RUN unzip bedrock-server.zip -d bedrock-server
RUN chmod +x bedrock-server/bedrock_server
RUN rm bedrock-server.zip

WORKDIR /bedrock-server
ENV LD_LIBRARY_PATH=.
CMD ./bedrock_server

# Minecraft Bedrock Server
Run a bedrock server in a Docker container.

## Introduction
This Docker image will download the Bedrock Server app and set it up, along with its dependencies.

## Usage
1. Prepare your data folder:
    1. Copy the data folder to some place where docker can use it as mounts.
    2. Configure the `server.properties` to your likings.
    3. Configure the `whitelist.json` in case you have set `white-list=true` in the above step. There is an example in the provided file. Just fill in the name and add more entries if wanted.
    4. Configure the `ops.json` and add the operators (I don't know the syntax yet).
    5. In case you want your already existing world, put it into the worlds folder and adjust the name in the `server.properties`.
2. Start the Docker container:
```bash
docker run -d --name=minecraft\
    -v 'yourpath/server.properties:/bedrock-server/server.properties'\
    -v 'yourpath/whitelist.json:/bedrock-server/whitelist.json'\
    -v 'yourpath/ops.json:/bedrock-server/ops.json'\
    -v `yourpath/worlds:/bedrock-server/worlds'\
    -p 19132:19132\
    --restart=always\
    roemer/bedrock-server
```

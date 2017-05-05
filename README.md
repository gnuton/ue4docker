gnuton/ue4 docker image
=========

Builds the latest unreal editor release for linux in a docker image.

## Instructions

1. Get github OAUTH_TOKEN in order to clone the Unreal4 git repository 
  * log into https://github.com
  * from top right menu > Settings > Personal Settings
![oauth](https://raw.githubusercontent.com/gnuton/ue4docker/master/Oauth.png)

2. Install docker: https://docs.docker.com/installation/

3. In a terminal, please run  
```bash
export OAUTH_TOKEN=<MyToken> && ./createImage.sh to build the docker image
``` 
4. Once the docker image is created, you can build UE4 by running 
```bash
./build.sh
```
5. Once the process is over you will run Unreal4 editor on linux
```bash
cd ~/ue4/UnrealEngine/Engine/Binaries/Linux
./UE4Editor
```

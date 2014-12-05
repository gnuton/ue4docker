ue4docker
=========

Docker file for building ue4 on Linux

## Instructions

1. Get github OAUTH_TOKEN with at least repo access: https://help.github.com/articles/creating-an-access-token-for-command-line-use/

2. ```
$ export OAUTH_TOKEN=<my_token>
$ docker build -t pjoe/ue4:4.6 .
$ docker run -ti --rm -e OAUTH_TOKEN -v <host-ue4-dir> -w /opt/ue4 pjoe/ue4:4.6

# git clone https://$OAUTH_TOKEN@github.com/EpicGames/UnrealEngine -b 4.6
# cd UnrealEngine
# ./Setup.sh
# ./GenerateProjectFiles.sh
# make ShaderCompileWorker UnrealLightmass UnrealPak UE4Editor
# exit

$ chown -R <myuser>:<myuser> <host-ue4-dir>
```

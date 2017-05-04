#!/bin/bash
git clone https://$OAUTH_TOKEN@github.com/EpicGames/UnrealEngine -b release
cd UnrealEngine
./Setup.sh
./GenerateProjectFiles.sh
make ShaderCompileWorker UnrealLightmass UnrealPak UE4Editor
exit

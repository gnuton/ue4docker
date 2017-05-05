#!/bin/bash

WORKINGDIR=$(pwd)

#### Download external plugins to let Linux IDE work with unreal 
# Check https://wiki.unrealengine.com/Linux_Known_Issues#C.2B.2B_projects_and_IDE.27s
WORKINGDIR=$(pwd)
mkdir -p UnrealEngineX/Engine/Plugins/Developer/
cd UnrealEngineX/Engine/Plugins/Developer/
# Qt Creator support
git clone https://github.com/fire/QtCreatorSourceCodeAccess.git
# Emacs/VIM support
git clone https://github.com/fire/SensibleEditorSourceCodeAccess.git
# Sublime Text
git clone https://github.com/erbridge/SublimeTextSourceCodeAccess.git


#### Build  Unreal Engine 4 ####
cd $WORKINGDIR
git clone https://$OAUTH_TOKEN@github.com/EpicGames/UnrealEngine -b release
cd UnrealEngine
./Setup.sh
./GenerateProjectFiles.sh
make ShaderCompileWorker UnrealLightmass UnrealPak UE4Editor

exit

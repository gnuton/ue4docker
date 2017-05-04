#!/bin/bash
mkdir $HOME/ue4
docker run -it --rm -v $HOME/ue4:/opt/ue4 -w /opt/ue4 gnuton/ue4

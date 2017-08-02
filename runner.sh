#!/bin/bash
cd $DRONE_WORKSPACE
if [ -z "$PLUGIN_BUILDFILE" ]; then
    export PLUGIN_BUILDFILE='build.yml'
fi

echo "$SSH_KEY" > /root/.ssh/id_rsa && chmod 600 /root/.ssh/id_rsa

phing -f $PLUGIN_BUILDFILE -Dsettings.tag=$DRONE_TAG
#!/bin/bash

PLUGIN_NAME="anti-voice-commands-spam"

cd scripting
spcomp $PLUGIN_NAME.sp -i include -o ../plugins/$PLUGIN_NAME.smx

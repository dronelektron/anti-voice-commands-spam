#!/bin/bash

PLUGIN_NAME="anti-voice-commands-spam"

cd scripting
spcomp $PLUGIN_NAME.sp -o ../plugins/$PLUGIN_NAME.smx

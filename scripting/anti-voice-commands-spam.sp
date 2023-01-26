#include <sourcemod>

#include "morecolors"

#include "modules/console-command.sp"
#include "modules/console-variable.sp"
#include "modules/message.sp"
#include "modules/use-case.sp"

public Plugin myinfo = {
    name = "Anti voice commands spam",
    author = "Dron-elektron",
    description = "Allows you to prevent spam by voice commands",
    version = "1.0.0",
    url = "https://github.com/dronelektron/anti-voice-commands-spam"
};

public void OnPluginStart() {
    Command_AddListeners();
    Variable_Create();
    LoadTranslations("anti-voice-commands-spam.phrases");
    AutoExecConfig(true, "anti-voice-commands-spam");
}

public void OnClientConnected(int client) {
    UseCase_ResetLastVoiceCommandTime(client);
}
